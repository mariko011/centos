<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `tomcat`

-	[`tomcat:7.0.81-jre7`](#tomcat7081-jre7)
-	[`tomcat:7.0-jre7`](#tomcat70-jre7)
-	[`tomcat:7-jre7`](#tomcat7-jre7)
-	[`tomcat:7.0.81`](#tomcat7081)
-	[`tomcat:7.0`](#tomcat70)
-	[`tomcat:7`](#tomcat7)
-	[`tomcat:7.0.81-jre7-alpine`](#tomcat7081-jre7-alpine)
-	[`tomcat:7.0-jre7-alpine`](#tomcat70-jre7-alpine)
-	[`tomcat:7-jre7-alpine`](#tomcat7-jre7-alpine)
-	[`tomcat:7.0.81-alpine`](#tomcat7081-alpine)
-	[`tomcat:7.0-alpine`](#tomcat70-alpine)
-	[`tomcat:7-alpine`](#tomcat7-alpine)
-	[`tomcat:7.0.81-jre8`](#tomcat7081-jre8)
-	[`tomcat:7.0-jre8`](#tomcat70-jre8)
-	[`tomcat:7-jre8`](#tomcat7-jre8)
-	[`tomcat:7.0.81-jre8-alpine`](#tomcat7081-jre8-alpine)
-	[`tomcat:7.0-jre8-alpine`](#tomcat70-jre8-alpine)
-	[`tomcat:7-jre8-alpine`](#tomcat7-jre8-alpine)
-	[`tomcat:8.0.46-jre7`](#tomcat8046-jre7)
-	[`tomcat:8.0-jre7`](#tomcat80-jre7)
-	[`tomcat:8.0.46`](#tomcat8046)
-	[`tomcat:8.0`](#tomcat80)
-	[`tomcat:8.0.46-jre7-alpine`](#tomcat8046-jre7-alpine)
-	[`tomcat:8.0-jre7-alpine`](#tomcat80-jre7-alpine)
-	[`tomcat:8.0.46-alpine`](#tomcat8046-alpine)
-	[`tomcat:8.0-alpine`](#tomcat80-alpine)
-	[`tomcat:8.0.46-jre8`](#tomcat8046-jre8)
-	[`tomcat:8.0-jre8`](#tomcat80-jre8)
-	[`tomcat:8.0.46-jre8-alpine`](#tomcat8046-jre8-alpine)
-	[`tomcat:8.0-jre8-alpine`](#tomcat80-jre8-alpine)
-	[`tomcat:8.5.20-jre8`](#tomcat8520-jre8)
-	[`tomcat:8.5-jre8`](#tomcat85-jre8)
-	[`tomcat:8-jre8`](#tomcat8-jre8)
-	[`tomcat:jre8`](#tomcatjre8)
-	[`tomcat:8.5.20`](#tomcat8520)
-	[`tomcat:8.5`](#tomcat85)
-	[`tomcat:8`](#tomcat8)
-	[`tomcat:latest`](#tomcatlatest)
-	[`tomcat:8.5.20-jre8-alpine`](#tomcat8520-jre8-alpine)
-	[`tomcat:8.5-jre8-alpine`](#tomcat85-jre8-alpine)
-	[`tomcat:8-jre8-alpine`](#tomcat8-jre8-alpine)
-	[`tomcat:jre8-alpine`](#tomcatjre8-alpine)
-	[`tomcat:8.5.20-alpine`](#tomcat8520-alpine)
-	[`tomcat:8.5-alpine`](#tomcat85-alpine)
-	[`tomcat:8-alpine`](#tomcat8-alpine)
-	[`tomcat:alpine`](#tomcatalpine)
-	[`tomcat:9.0.0.M26-jre8`](#tomcat900m26-jre8)
-	[`tomcat:9.0.0-jre8`](#tomcat900-jre8)
-	[`tomcat:9.0-jre8`](#tomcat90-jre8)
-	[`tomcat:9-jre8`](#tomcat9-jre8)
-	[`tomcat:9.0.0.M26`](#tomcat900m26)
-	[`tomcat:9.0.0`](#tomcat900)
-	[`tomcat:9.0`](#tomcat90)
-	[`tomcat:9`](#tomcat9)
-	[`tomcat:9.0.0.M26-jre8-alpine`](#tomcat900m26-jre8-alpine)
-	[`tomcat:9.0.0-jre8-alpine`](#tomcat900-jre8-alpine)
-	[`tomcat:9.0-jre8-alpine`](#tomcat90-jre8-alpine)
-	[`tomcat:9-jre8-alpine`](#tomcat9-jre8-alpine)
-	[`tomcat:9.0.0.M26-alpine`](#tomcat900m26-alpine)
-	[`tomcat:9.0.0-alpine`](#tomcat900-alpine)
-	[`tomcat:9.0-alpine`](#tomcat90-alpine)
-	[`tomcat:9-alpine`](#tomcat9-alpine)

## `tomcat:7.0.81-jre7`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0-jre7`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7-jre7`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0.81`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7`

```console
$ docker pull tomcat@sha256:59b6587bdd2e39ea09ca41ce2c92d34f345cbe49a4b686242f569f143613ac7a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202323386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852c69c84df302bdd8675b6c20efe5e7fb07275e09908efff40ab0e81ccd88e6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 15:55:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 15:55:22 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 15:56:25 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 15:56:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 15:56:30 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 15:56:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ca7748243e98b8bef9215fbe8323a34109b4ffd56ba79ed5be01d56cdc56e5`  
		Last Modified: Mon, 11 Sep 2017 16:04:45 GMT  
		Size: 9.6 MB (9634550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b26df8da05fdbbb88a1a5c0e4f2b58e07fe481192e83628b16eb053a78c9c4`  
		Last Modified: Mon, 11 Sep 2017 16:04:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0.81-jre7-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0-jre7-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7-jre7-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0.81-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7-alpine`

```console
$ docker pull tomcat@sha256:a7c83e896d8191c171b5e3a4c05d8e3982ca6b6f596899017d33b340af784d46
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79908432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8387ed038c32e7840efef2e05893bbd6977826e62f8d986681c218b232c50b24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:13:20 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:22:25 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:26 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:22:27 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:22:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:22:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:22:52 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:22:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3070b31c7ed32de08a21eb37646a1d7d461782c8ad42cd35579470fd48b8b28`  
		Last Modified: Mon, 21 Aug 2017 19:29:23 GMT  
		Size: 12.2 MB (12233530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bcbf166c00791c673647d267ab4388e0dc5e2c2659e97b53f4851488677e1`  
		Last Modified: Mon, 21 Aug 2017 19:29:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0.81-jre8`

```console
$ docker pull tomcat@sha256:05e3d8d0c297aad53cb1eb987d5c64f75462b569ae3907fee47c1bb63fa52ea8
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237828111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e01df0ddd30f2e5e8754470b4528bfb43c55650b036cd1e53f63df35731d25`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:01:36 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:01:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:01:44 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:01:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa4a14b7bfb29009bb3c485dc2425de33539fa39936abf761de72c8321397fb`  
		Last Modified: Mon, 11 Sep 2017 16:05:43 GMT  
		Size: 9.7 MB (9699066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d059709ec4ab4ddbfc27f4ac114d56655aeebacd0d6fd83ab60e5006b0b1b1`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0-jre8`

```console
$ docker pull tomcat@sha256:05e3d8d0c297aad53cb1eb987d5c64f75462b569ae3907fee47c1bb63fa52ea8
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237828111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e01df0ddd30f2e5e8754470b4528bfb43c55650b036cd1e53f63df35731d25`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:01:36 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:01:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:01:44 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:01:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa4a14b7bfb29009bb3c485dc2425de33539fa39936abf761de72c8321397fb`  
		Last Modified: Mon, 11 Sep 2017 16:05:43 GMT  
		Size: 9.7 MB (9699066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d059709ec4ab4ddbfc27f4ac114d56655aeebacd0d6fd83ab60e5006b0b1b1`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7-jre8`

```console
$ docker pull tomcat@sha256:05e3d8d0c297aad53cb1eb987d5c64f75462b569ae3907fee47c1bb63fa52ea8
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237828111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e01df0ddd30f2e5e8754470b4528bfb43c55650b036cd1e53f63df35731d25`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 11 Sep 2017 16:00:37 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 11 Sep 2017 16:00:38 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 11 Sep 2017 16:01:36 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:01:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:01:44 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:01:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa4a14b7bfb29009bb3c485dc2425de33539fa39936abf761de72c8321397fb`  
		Last Modified: Mon, 11 Sep 2017 16:05:43 GMT  
		Size: 9.7 MB (9699066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d059709ec4ab4ddbfc27f4ac114d56655aeebacd0d6fd83ab60e5006b0b1b1`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0.81-jre8-alpine`

```console
$ docker pull tomcat@sha256:125472bc0d4e7a83349aeefc2a5a5ee2b55c01bbd702322ffd1778dea338e924
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0.81-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73012820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e549fb3f0f2d66d05f5906e809fc14ab395597befa87b680e9182b100e47b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:16:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:24:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:24:27 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:24:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d9e3202c84ab9734e2ab8fcf460da77e146f60ed4e7a0928feb848a6145988`  
		Last Modified: Mon, 21 Aug 2017 19:31:02 GMT  
		Size: 12.2 MB (12212802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3df5be0b1911e3cf9cfa6aedfb9fa78f95c91dd758e94edfe1a173f1d2dd64a`  
		Last Modified: Mon, 21 Aug 2017 19:31:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7.0-jre8-alpine`

```console
$ docker pull tomcat@sha256:125472bc0d4e7a83349aeefc2a5a5ee2b55c01bbd702322ffd1778dea338e924
```

-	Platforms:
	-	linux; amd64

### `tomcat:7.0-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73012820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e549fb3f0f2d66d05f5906e809fc14ab395597befa87b680e9182b100e47b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:16:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:24:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:24:27 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:24:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d9e3202c84ab9734e2ab8fcf460da77e146f60ed4e7a0928feb848a6145988`  
		Last Modified: Mon, 21 Aug 2017 19:31:02 GMT  
		Size: 12.2 MB (12212802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3df5be0b1911e3cf9cfa6aedfb9fa78f95c91dd758e94edfe1a173f1d2dd64a`  
		Last Modified: Mon, 21 Aug 2017 19:31:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:7-jre8-alpine`

```console
$ docker pull tomcat@sha256:125472bc0d4e7a83349aeefc2a5a5ee2b55c01bbd702322ffd1778dea338e924
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73012820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e549fb3f0f2d66d05f5906e809fc14ab395597befa87b680e9182b100e47b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:16:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_VERSION=7.0.81
# Mon, 21 Aug 2017 19:24:00 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Mon, 21 Aug 2017 19:24:01 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Mon, 21 Aug 2017 19:24:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:24:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:24:27 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:24:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d9e3202c84ab9734e2ab8fcf460da77e146f60ed4e7a0928feb848a6145988`  
		Last Modified: Mon, 21 Aug 2017 19:31:02 GMT  
		Size: 12.2 MB (12212802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3df5be0b1911e3cf9cfa6aedfb9fa78f95c91dd758e94edfe1a173f1d2dd64a`  
		Last Modified: Mon, 21 Aug 2017 19:31:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46-jre7`

```console
$ docker pull tomcat@sha256:4062f2689fb06ceca6e67ebb65851f00c65a613365a439591827b85c38250ace
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202686654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27af60e9455bc293dc4576e391f96f0935440f1d07127bef883d8058816eebff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:01:51 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:30 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:02:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:02:32 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:02:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e309f1497d8b609a2d0ba81b412f1bcbca9dcf7074c0b58d775851d3efa6dd`  
		Last Modified: Mon, 11 Sep 2017 16:06:17 GMT  
		Size: 10.0 MB (9997817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e8029e1791d3bbf015adb468add1b1064a281d0238f01672146e1e7862fb7`  
		Last Modified: Mon, 11 Sep 2017 16:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0-jre7`

```console
$ docker pull tomcat@sha256:4062f2689fb06ceca6e67ebb65851f00c65a613365a439591827b85c38250ace
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202686654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27af60e9455bc293dc4576e391f96f0935440f1d07127bef883d8058816eebff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:01:51 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:30 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:02:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:02:32 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:02:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e309f1497d8b609a2d0ba81b412f1bcbca9dcf7074c0b58d775851d3efa6dd`  
		Last Modified: Mon, 11 Sep 2017 16:06:17 GMT  
		Size: 10.0 MB (9997817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e8029e1791d3bbf015adb468add1b1064a281d0238f01672146e1e7862fb7`  
		Last Modified: Mon, 11 Sep 2017 16:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46`

```console
$ docker pull tomcat@sha256:4062f2689fb06ceca6e67ebb65851f00c65a613365a439591827b85c38250ace
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202686654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27af60e9455bc293dc4576e391f96f0935440f1d07127bef883d8058816eebff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:01:51 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:30 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:02:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:02:32 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:02:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e309f1497d8b609a2d0ba81b412f1bcbca9dcf7074c0b58d775851d3efa6dd`  
		Last Modified: Mon, 11 Sep 2017 16:06:17 GMT  
		Size: 10.0 MB (9997817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e8029e1791d3bbf015adb468add1b1064a281d0238f01672146e1e7862fb7`  
		Last Modified: Mon, 11 Sep 2017 16:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0`

```console
$ docker pull tomcat@sha256:4062f2689fb06ceca6e67ebb65851f00c65a613365a439591827b85c38250ace
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202686654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27af60e9455bc293dc4576e391f96f0935440f1d07127bef883d8058816eebff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 15:54:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 15:54:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:54:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 15:54:45 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 15:54:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 15:54:46 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 15:54:47 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 15:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 15:55:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:01:51 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:52 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:01:53 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:30 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:02:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:02:32 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:02:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd530aab6213186697ee7f2a8bb7103c7396d7d413a5242d60667875796cd752`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654de642c88e1969e8b28bf9f51dfe71bfeead1cc72066494ae9fd45550a0e2b`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01ffdc7141486f14c1a0d7a8dcc376d084a6d0a69dfae9a061dfe95aeb1df0`  
		Last Modified: Mon, 11 Sep 2017 16:04:46 GMT  
		Size: 3.3 MB (3263284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650692ed96d853006a9d441f559639c64179b4840f321b5a2269171c90999c36`  
		Last Modified: Mon, 11 Sep 2017 16:04:44 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e309f1497d8b609a2d0ba81b412f1bcbca9dcf7074c0b58d775851d3efa6dd`  
		Last Modified: Mon, 11 Sep 2017 16:06:17 GMT  
		Size: 10.0 MB (9997817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e8029e1791d3bbf015adb468add1b1064a281d0238f01672146e1e7862fb7`  
		Last Modified: Mon, 11 Sep 2017 16:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46-jre7-alpine`

```console
$ docker pull tomcat@sha256:090571cf951a981cba364b60e7b4b73fa57a640a4623aca6039de9b4c09f4ff1
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80276698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e72a1436edbfba0c3009c0cc97eae20f4729ca924eb1658a57d126dda9c7ad7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:11:24 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:27:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:27:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:27:07 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:27:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889424e70c99241006aa64c74b0c556243733411fcc152c60f66042c2fd4b2`  
		Last Modified: Mon, 21 Aug 2017 19:31:57 GMT  
		Size: 12.6 MB (12601796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3278536f25ddc9a7ecc298d70629f4283ef1a588738f875b4763a8c22466a47e`  
		Last Modified: Mon, 21 Aug 2017 19:31:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0-jre7-alpine`

```console
$ docker pull tomcat@sha256:090571cf951a981cba364b60e7b4b73fa57a640a4623aca6039de9b4c09f4ff1
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80276698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e72a1436edbfba0c3009c0cc97eae20f4729ca924eb1658a57d126dda9c7ad7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:11:24 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:27:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:27:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:27:07 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:27:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889424e70c99241006aa64c74b0c556243733411fcc152c60f66042c2fd4b2`  
		Last Modified: Mon, 21 Aug 2017 19:31:57 GMT  
		Size: 12.6 MB (12601796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3278536f25ddc9a7ecc298d70629f4283ef1a588738f875b4763a8c22466a47e`  
		Last Modified: Mon, 21 Aug 2017 19:31:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46-alpine`

```console
$ docker pull tomcat@sha256:090571cf951a981cba364b60e7b4b73fa57a640a4623aca6039de9b4c09f4ff1
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80276698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e72a1436edbfba0c3009c0cc97eae20f4729ca924eb1658a57d126dda9c7ad7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:11:24 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:27:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:27:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:27:07 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:27:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889424e70c99241006aa64c74b0c556243733411fcc152c60f66042c2fd4b2`  
		Last Modified: Mon, 21 Aug 2017 19:31:57 GMT  
		Size: 12.6 MB (12601796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3278536f25ddc9a7ecc298d70629f4283ef1a588738f875b4763a8c22466a47e`  
		Last Modified: Mon, 21 Aug 2017 19:31:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0-alpine`

```console
$ docker pull tomcat@sha256:090571cf951a981cba364b60e7b4b73fa57a640a4623aca6039de9b4c09f4ff1
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80276698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e72a1436edbfba0c3009c0cc97eae20f4729ca924eb1658a57d126dda9c7ad7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:12:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:12:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 29 Jun 2017 00:13:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:13:01 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:13:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:13:08 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:13:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:13:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:11:24 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:26:41 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:26:42 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:27:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:27:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:27:07 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:27:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8de0d36b9169dfa919516518f32c67efc3094619b420e18fc0baafe6fd54e`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1aa32b78ab10a4c615fa697ddca20c155dc147fcfd19f3597e52c531c7e26a`  
		Last Modified: Fri, 30 Jun 2017 17:40:54 GMT  
		Size: 4.4 MB (4441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bf0e847d698364a85d71e9129fe7744c9f1212c53566b92d4e59f704b264bc`  
		Last Modified: Fri, 30 Jun 2017 17:40:52 GMT  
		Size: 112.6 KB (112558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86889424e70c99241006aa64c74b0c556243733411fcc152c60f66042c2fd4b2`  
		Last Modified: Mon, 21 Aug 2017 19:31:57 GMT  
		Size: 12.6 MB (12601796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3278536f25ddc9a7ecc298d70629f4283ef1a588738f875b4763a8c22466a47e`  
		Last Modified: Mon, 21 Aug 2017 19:31:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46-jre8`

```console
$ docker pull tomcat@sha256:dfb7c0989c423d9eeaf25d888c07b56d8b2e74ba4e164a7dc8e0ed325dd1648b
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238192314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf831fd5dae92f90a930931a681a21ca20939a48390522f9649594e5fb2719b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:41 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:02:41 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:03:05 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fd7d3d31aa8c4bc9d33566536eba9ca2720239a8529f543916a20188a1b8e8`  
		Last Modified: Mon, 11 Sep 2017 16:06:57 GMT  
		Size: 10.1 MB (10063270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb03e7d00e2fc695f0074fbfd16b9eba8c2b2346bbf1f8cb222f6124a74ca3`  
		Last Modified: Mon, 11 Sep 2017 16:06:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0-jre8`

```console
$ docker pull tomcat@sha256:dfb7c0989c423d9eeaf25d888c07b56d8b2e74ba4e164a7dc8e0ed325dd1648b
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238192314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf831fd5dae92f90a930931a681a21ca20939a48390522f9649594e5fb2719b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:02:40 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:02:41 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 11 Sep 2017 16:02:41 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 11 Sep 2017 16:03:05 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fd7d3d31aa8c4bc9d33566536eba9ca2720239a8529f543916a20188a1b8e8`  
		Last Modified: Mon, 11 Sep 2017 16:06:57 GMT  
		Size: 10.1 MB (10063270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fb03e7d00e2fc695f0074fbfd16b9eba8c2b2346bbf1f8cb222f6124a74ca3`  
		Last Modified: Mon, 11 Sep 2017 16:06:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0.46-jre8-alpine`

```console
$ docker pull tomcat@sha256:d90cd12103068c280144152b667b4c0ea843791514599b790eae8c1b1ecc4e1f
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0.46-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73380412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbc76c6833f81f679be69c76c61fe063596d43731fd079c2fe080cb371430c3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:28:01 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:28:03 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:28:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:28:22 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:28:22 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:28:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0603c637adc64677ca3d4119d2026c2bbcb2c7bb7db3094b9bcf1fed27dfee36`  
		Last Modified: Mon, 21 Aug 2017 19:33:14 GMT  
		Size: 12.6 MB (12580397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25030b04c5fd1831e27175c24fd2c2fea4a21dbc24bdac5156291a2513f12a8a`  
		Last Modified: Mon, 21 Aug 2017 19:33:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.0-jre8-alpine`

```console
$ docker pull tomcat@sha256:d90cd12103068c280144152b667b4c0ea843791514599b790eae8c1b1ecc4e1f
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.0-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73380412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbbc76c6833f81f679be69c76c61fe063596d43731fd079c2fe080cb371430c3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Mon, 21 Aug 2017 19:28:01 GMT
ENV TOMCAT_VERSION=8.0.46
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:28:02 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
# Mon, 21 Aug 2017 19:28:03 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz.asc
# Mon, 21 Aug 2017 19:28:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 21 Aug 2017 19:28:22 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 21 Aug 2017 19:28:22 GMT
EXPOSE 8080/tcp
# Mon, 21 Aug 2017 19:28:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0603c637adc64677ca3d4119d2026c2bbcb2c7bb7db3094b9bcf1fed27dfee36`  
		Last Modified: Mon, 21 Aug 2017 19:33:14 GMT  
		Size: 12.6 MB (12580397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25030b04c5fd1831e27175c24fd2c2fea4a21dbc24bdac5156291a2513f12a8a`  
		Last Modified: Mon, 21 Aug 2017 19:33:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5.20-jre8`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5.20-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5-jre8`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8-jre8`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:jre8`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5.20`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5.20` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:latest`

```console
$ docker pull tomcat@sha256:9e0a4e6340cc376e6dab34f40548f050e6e97ee1b05baf1b0b84ccc792d40587
```

-	Platforms:
	-	linux; amd64

### `tomcat:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238274714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbedce2f08c261f32116d234cf8b06b88d76fccffa976397fff44d0980ae0c7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:00:33 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:00:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:02:39 GMT
ENV TOMCAT_MAJOR=8
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_VERSION=8.5.20
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Mon, 11 Sep 2017 16:03:15 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Mon, 11 Sep 2017 16:03:52 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:03:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:03:54 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:03:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec23e382383f73f134dc73128d1e2a4d799207be80ed5ace0780bcbca81ee3b`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 112.2 KB (112245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157c242966a28f054555f707ef1560e6c3a5bc3d2fd27e712d9319a9d087d38`  
		Last Modified: Mon, 11 Sep 2017 16:07:20 GMT  
		Size: 10.1 MB (10145670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb55a92f14a929a92ad759bd7766c6c1fed3099b9315032cc9ca94565815fd47`  
		Last Modified: Mon, 11 Sep 2017 16:07:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5.20-jre8-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5.20-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5-jre8-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8-jre8-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:jre8-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5.20-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5.20-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8.5-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:8-alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:alpine`

```console
$ docker pull tomcat@sha256:638c5b3a7e9e50a6ba3197262e588f611acd51dfc766c4bf73f79ba09c790718
```

-	Platforms:
	-	linux; amd64

### `tomcat:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a52cc3c9e4449e5b5ea0478e624b65d51be1892c7412ae94304ac561b6d3e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Thu, 29 Jun 2017 00:16:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 29 Jun 2017 00:16:24 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 29 Jun 2017 00:19:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_VERSION=8.5.20
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Wed, 09 Aug 2017 21:59:43 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Wed, 09 Aug 2017 22:00:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:00:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:00:06 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:00:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff09f4ca74ab4a7279d4c685b37354bfa23ed53368b58a5e9452b4b561fd4de`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 112.5 KB (112544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10128998c7e29022c3869dc559a43cd9dae5e6ac853be7344c86a8c25a404c57`  
		Last Modified: Wed, 09 Aug 2017 22:56:18 GMT  
		Size: 12.7 MB (12659627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ffbf4ab83545fd51808fe0537c810ac6538d063519f21f60baf8becb02e941`  
		Last Modified: Wed, 09 Aug 2017 22:56:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0.M26-jre8`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0.M26-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0-jre8`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0-jre8`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9-jre8`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0.M26`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0.M26` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9`

```console
$ docker pull tomcat@sha256:5e42b0aae5a1354f56997683d030d616ca838bee147153f2143836dda2b5f73e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238207006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6caa4e9fd26296d90d0124645d6162bc47c1c0334c51ac9107c14d7b1206b5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:00:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 11 Sep 2017 16:00:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:00:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 11 Sep 2017 16:00:22 GMT
WORKDIR /usr/local/tomcat
# Mon, 11 Sep 2017 16:00:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 11 Sep 2017 16:00:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Mon, 11 Sep 2017 16:00:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Mon, 11 Sep 2017 16:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 16:04:02 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 11 Sep 2017 16:04:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_MAJOR=9
# Mon, 11 Sep 2017 16:04:05 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:06 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Mon, 11 Sep 2017 16:04:07 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Mon, 11 Sep 2017 16:04:26 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 11 Sep 2017 16:04:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 11 Sep 2017 16:04:28 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:04:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95aa927d4c1065c90f0feb1faade7c6a9bee7c578c09d6eed38da2a6373c03aa`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b387a9395b976510d0710d41c28019cee81174a3f1e72d2cf4e00fe82cdc9dd`  
		Last Modified: Mon, 11 Sep 2017 16:05:42 GMT  
		Size: 300.2 KB (300234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c155ad73e38cfee56dc6306525c7f6649c0bd8657ad3fc17d1532b280a430e`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 99.6 KB (99575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb96c25944573a47030d315d30c3a3f7b3e7141292deaf0d653d8e6d5a75777`  
		Last Modified: Mon, 11 Sep 2017 16:08:36 GMT  
		Size: 10.1 MB (10090633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04155133a24b1c0b6ed6441255d5965e243115a126df890f41bcf6f6209f511c`  
		Last Modified: Mon, 11 Sep 2017 16:08:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0.M26-jre8-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0.M26-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0-jre8-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0-jre8-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9-jre8-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0.M26-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0.M26-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0.0-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9.0-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomcat:9-alpine`

```console
$ docker pull tomcat@sha256:9f47e8ce84afe3a60523c3221306dcff6f227e380674643b8a82c26b48be0c2e
```

-	Platforms:
	-	linux; amd64

### `tomcat:9-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73391193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08aedc36ee7f3ce3d06deb5acf8d640d14d36d0c697f20217f367c13bb7278b2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 00:15:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Jun 2017 00:15:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 00:15:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Jun 2017 00:15:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Jun 2017 00:15:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 29 Jun 2017 00:15:52 GMT
RUN apk add --no-cache gnupg
# Fri, 30 Jun 2017 17:24:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 30 Jun 2017 17:24:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 30 Jun 2017 17:24:58 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_VERSION=9.0.0.M26
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:49:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz
# Wed, 09 Aug 2017 22:49:49 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz.asc
# Wed, 09 Aug 2017 22:50:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 Aug 2017 22:50:31 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 Aug 2017 22:50:31 GMT
EXPOSE 8080/tcp
# Wed, 09 Aug 2017 22:50:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2d59435c4029962b9855f3cb2d89767cc071e0533b125de9bef053377ceb8`  
		Last Modified: Fri, 30 Jun 2017 17:48:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d7ae09744e46ad6ec0aeb24bbfae7f7eb17e864606249e105aec7afaa5ac5c`  
		Last Modified: Fri, 30 Jun 2017 17:48:22 GMT  
		Size: 4.4 MB (4415281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717cc83faebf81f9b54e563e4c5a7127d521de5bb30b02634b86d45f4926c93`  
		Last Modified: Fri, 30 Jun 2017 18:20:51 GMT  
		Size: 99.9 KB (99862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c709686bf7b4e3e737b4ace6d567d767e12b7d6463a38c1cca6963ba2809a634`  
		Last Modified: Wed, 09 Aug 2017 22:58:10 GMT  
		Size: 12.6 MB (12603855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd5c1a57fead1005164e75c38e34e5c4400d7de3004f0508c29afd30fe4fd14`  
		Last Modified: Wed, 09 Aug 2017 22:58:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
