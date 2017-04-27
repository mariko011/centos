<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `geonetwork`

-	[`geonetwork:3.0.5`](#geonetwork305)
-	[`geonetwork:3.0`](#geonetwork30)
-	[`geonetwork:3.0.5-postgres`](#geonetwork305-postgres)
-	[`geonetwork:3.0-postgres`](#geonetwork30-postgres)
-	[`geonetwork:3.2.1`](#geonetwork321)
-	[`geonetwork:3.2`](#geonetwork32)
-	[`geonetwork:latest`](#geonetworklatest)
-	[`geonetwork:3.2.1-postgres`](#geonetwork321-postgres)
-	[`geonetwork:3.2-postgres`](#geonetwork32-postgres)
-	[`geonetwork:postgres`](#geonetworkpostgres)

## `geonetwork:3.0.5`

```console
$ docker pull geonetwork@sha256:3b033ee8be09807c5eeb2de4fbc86451547ad8ff6177620eaca6828cc58b3f09
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.5 MB (303484058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5ca78532ec6546c2b7e5dc11df7d643e6fd4165c6cedc81558cbb44458dc39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:08:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 03:37:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:37:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:37:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:37:34 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:37:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:37:38 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:40:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:40:57 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:43:35 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:43:37 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:44:12 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:44:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:44:15 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:44:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:35:01 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:35:02 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:35:03 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:35:03 GMT
ENV GN_VERSION=3.0.5
# Thu, 27 Apr 2017 04:35:04 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 27 Apr 2017 04:35:05 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:35:23 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:35:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:35:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926cca7b89b6a8460b273754a03199a9d998af34a052559c3defe53b15a274c1`  
		Last Modified: Wed, 26 Apr 2017 23:18:35 GMT  
		Size: 78.4 MB (78410775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a54eb37c44899c8ed6df70576c692fe00f4350d5d0522a4a31b025108a9de9`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5465b379f2039880ea02e46e081d575c92d547886e32d9cf09c90fade7ac6375`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ab0072a505fc2cbb82c20a6b670d461dae4a833578f715f7018f585ff8ae50`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 3.2 MB (3247919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73b3d87d8a52bd57ba96dde9baf4c6e3275472a2d6e30924dcf2fa3e0da0d1`  
		Last Modified: Thu, 27 Apr 2017 03:52:44 GMT  
		Size: 113.9 KB (113852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6164d71bc228f0f8c6d5a919dfa52186c2b76f948e1d1edb7f20afe4ae6c966`  
		Last Modified: Thu, 27 Apr 2017 03:59:28 GMT  
		Size: 10.0 MB (9954113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff326941da04e12581ed4c9e85bc34c5242f039ba893ce95039de9a35c8c2f2`  
		Last Modified: Thu, 27 Apr 2017 03:59:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74872a8e8956367be879395996049846c64311751b882edd8f940a3d6ae5c694`  
		Last Modified: Thu, 27 Apr 2017 04:39:35 GMT  
		Size: 139.4 MB (139366091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba5a93c641a73b840bf3ac7acdf0abe7580976847ee403c1fb24d4e39c4d9c6`  
		Last Modified: Thu, 27 Apr 2017 04:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:3b033ee8be09807c5eeb2de4fbc86451547ad8ff6177620eaca6828cc58b3f09
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.5 MB (303484058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5ca78532ec6546c2b7e5dc11df7d643e6fd4165c6cedc81558cbb44458dc39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:08:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 03:37:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:37:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:37:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:37:34 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:37:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:37:38 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:40:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:40:57 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:43:35 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:43:37 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:44:12 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:44:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:44:15 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:44:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:35:01 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:35:02 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:35:03 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:35:03 GMT
ENV GN_VERSION=3.0.5
# Thu, 27 Apr 2017 04:35:04 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 27 Apr 2017 04:35:05 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:35:23 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:35:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:35:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926cca7b89b6a8460b273754a03199a9d998af34a052559c3defe53b15a274c1`  
		Last Modified: Wed, 26 Apr 2017 23:18:35 GMT  
		Size: 78.4 MB (78410775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a54eb37c44899c8ed6df70576c692fe00f4350d5d0522a4a31b025108a9de9`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5465b379f2039880ea02e46e081d575c92d547886e32d9cf09c90fade7ac6375`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ab0072a505fc2cbb82c20a6b670d461dae4a833578f715f7018f585ff8ae50`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 3.2 MB (3247919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73b3d87d8a52bd57ba96dde9baf4c6e3275472a2d6e30924dcf2fa3e0da0d1`  
		Last Modified: Thu, 27 Apr 2017 03:52:44 GMT  
		Size: 113.9 KB (113852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6164d71bc228f0f8c6d5a919dfa52186c2b76f948e1d1edb7f20afe4ae6c966`  
		Last Modified: Thu, 27 Apr 2017 03:59:28 GMT  
		Size: 10.0 MB (9954113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff326941da04e12581ed4c9e85bc34c5242f039ba893ce95039de9a35c8c2f2`  
		Last Modified: Thu, 27 Apr 2017 03:59:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74872a8e8956367be879395996049846c64311751b882edd8f940a3d6ae5c694`  
		Last Modified: Thu, 27 Apr 2017 04:39:35 GMT  
		Size: 139.4 MB (139366091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba5a93c641a73b840bf3ac7acdf0abe7580976847ee403c1fb24d4e39c4d9c6`  
		Last Modified: Thu, 27 Apr 2017 04:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:c77f8f1ec90e485ae920c8f166ce96464a96c3fdeaaa691b6aa6f4eaf1bb0afd
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314165663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88581d447cae21c4f16be8aef76f73d9c96365c9bcca0a857643900e3e91326`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:08:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 03:37:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:37:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:37:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:37:34 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:37:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:37:38 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:40:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:40:57 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:43:35 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:43:37 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:44:12 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:44:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:44:15 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:44:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:35:01 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:35:02 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:35:03 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:35:03 GMT
ENV GN_VERSION=3.0.5
# Thu, 27 Apr 2017 04:35:04 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 27 Apr 2017 04:35:05 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:35:23 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:35:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:35:26 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:24 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 04:37:26 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 27 Apr 2017 04:37:27 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 27 Apr 2017 04:37:28 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 27 Apr 2017 04:37:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:37:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926cca7b89b6a8460b273754a03199a9d998af34a052559c3defe53b15a274c1`  
		Last Modified: Wed, 26 Apr 2017 23:18:35 GMT  
		Size: 78.4 MB (78410775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a54eb37c44899c8ed6df70576c692fe00f4350d5d0522a4a31b025108a9de9`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5465b379f2039880ea02e46e081d575c92d547886e32d9cf09c90fade7ac6375`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ab0072a505fc2cbb82c20a6b670d461dae4a833578f715f7018f585ff8ae50`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 3.2 MB (3247919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73b3d87d8a52bd57ba96dde9baf4c6e3275472a2d6e30924dcf2fa3e0da0d1`  
		Last Modified: Thu, 27 Apr 2017 03:52:44 GMT  
		Size: 113.9 KB (113852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6164d71bc228f0f8c6d5a919dfa52186c2b76f948e1d1edb7f20afe4ae6c966`  
		Last Modified: Thu, 27 Apr 2017 03:59:28 GMT  
		Size: 10.0 MB (9954113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff326941da04e12581ed4c9e85bc34c5242f039ba893ce95039de9a35c8c2f2`  
		Last Modified: Thu, 27 Apr 2017 03:59:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74872a8e8956367be879395996049846c64311751b882edd8f940a3d6ae5c694`  
		Last Modified: Thu, 27 Apr 2017 04:39:35 GMT  
		Size: 139.4 MB (139366091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba5a93c641a73b840bf3ac7acdf0abe7580976847ee403c1fb24d4e39c4d9c6`  
		Last Modified: Thu, 27 Apr 2017 04:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1d60feba8d67e2c50afa679de4feba453a523dda17cad1d1bfae84245ebdd8`  
		Last Modified: Thu, 27 Apr 2017 04:40:22 GMT  
		Size: 10.7 MB (10679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a06003b9dd7090586b264edb203a34364f7c5fa72e9347e88cf5b6c9c949890`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ad0c6023853989e38abaf989cbfcedfcdd813a7695d028b763f3defcb02a50`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4db350eb83ec7e0b55acedcc6f827db635a9d5876ee5b2a09bf2ccdc1a798e7`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:c77f8f1ec90e485ae920c8f166ce96464a96c3fdeaaa691b6aa6f4eaf1bb0afd
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314165663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88581d447cae21c4f16be8aef76f73d9c96365c9bcca0a857643900e3e91326`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:40:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:40:09 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:08:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 03:37:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:37:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:37:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:37:34 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:37:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:37:36 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:37:38 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:37:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:40:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:40:57 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:43:35 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:43:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:43:37 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:44:12 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:44:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:44:15 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:44:16 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:35:01 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:35:02 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:35:03 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:35:03 GMT
ENV GN_VERSION=3.0.5
# Thu, 27 Apr 2017 04:35:04 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 27 Apr 2017 04:35:05 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:35:23 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:35:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:35:26 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:24 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 04:37:26 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 27 Apr 2017 04:37:27 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 27 Apr 2017 04:37:28 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 27 Apr 2017 04:37:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:37:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926cca7b89b6a8460b273754a03199a9d998af34a052559c3defe53b15a274c1`  
		Last Modified: Wed, 26 Apr 2017 23:18:35 GMT  
		Size: 78.4 MB (78410775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a54eb37c44899c8ed6df70576c692fe00f4350d5d0522a4a31b025108a9de9`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5465b379f2039880ea02e46e081d575c92d547886e32d9cf09c90fade7ac6375`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ab0072a505fc2cbb82c20a6b670d461dae4a833578f715f7018f585ff8ae50`  
		Last Modified: Thu, 27 Apr 2017 03:49:33 GMT  
		Size: 3.2 MB (3247919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73b3d87d8a52bd57ba96dde9baf4c6e3275472a2d6e30924dcf2fa3e0da0d1`  
		Last Modified: Thu, 27 Apr 2017 03:52:44 GMT  
		Size: 113.9 KB (113852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6164d71bc228f0f8c6d5a919dfa52186c2b76f948e1d1edb7f20afe4ae6c966`  
		Last Modified: Thu, 27 Apr 2017 03:59:28 GMT  
		Size: 10.0 MB (9954113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff326941da04e12581ed4c9e85bc34c5242f039ba893ce95039de9a35c8c2f2`  
		Last Modified: Thu, 27 Apr 2017 03:59:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74872a8e8956367be879395996049846c64311751b882edd8f940a3d6ae5c694`  
		Last Modified: Thu, 27 Apr 2017 04:39:35 GMT  
		Size: 139.4 MB (139366091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba5a93c641a73b840bf3ac7acdf0abe7580976847ee403c1fb24d4e39c4d9c6`  
		Last Modified: Thu, 27 Apr 2017 04:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1d60feba8d67e2c50afa679de4feba453a523dda17cad1d1bfae84245ebdd8`  
		Last Modified: Thu, 27 Apr 2017 04:40:22 GMT  
		Size: 10.7 MB (10679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a06003b9dd7090586b264edb203a34364f7c5fa72e9347e88cf5b6c9c949890`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ad0c6023853989e38abaf989cbfcedfcdd813a7695d028b763f3defcb02a50`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4db350eb83ec7e0b55acedcc6f827db635a9d5876ee5b2a09bf2ccdc1a798e7`  
		Last Modified: Thu, 27 Apr 2017 04:40:20 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1`

```console
$ docker pull geonetwork@sha256:a567bb1792993cb72600c3c09d17f8d4b46a1dc9951d8c20b39d5a92e158bb1f
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342100651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2a6e74274570adc76f376f0442003dd0f34f8e1bac1fa3655dd89353c7cfbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:a567bb1792993cb72600c3c09d17f8d4b46a1dc9951d8c20b39d5a92e158bb1f
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342100651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2a6e74274570adc76f376f0442003dd0f34f8e1bac1fa3655dd89353c7cfbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:a567bb1792993cb72600c3c09d17f8d4b46a1dc9951d8c20b39d5a92e158bb1f
```

-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342100651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2a6e74274570adc76f376f0442003dd0f34f8e1bac1fa3655dd89353c7cfbd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1-postgres`

```console
$ docker pull geonetwork@sha256:f3892104ab424b1915b0cc843a1d63d45f41b5de6b0a1dd65ece13cb44cdc292
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1-postgres` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352757842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5564757df4aff471528b0ba10d68d7a5fe5a4f7c90e1ac12ce49d7450c8670`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:38:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 04:38:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 27 Apr 2017 04:38:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 27 Apr 2017 04:38:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 27 Apr 2017 04:39:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:39:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d2564f1295597ce2473cd86e1d84dbec6b823e0865fa4991f81c94dd698943`  
		Last Modified: Thu, 27 Apr 2017 04:42:34 GMT  
		Size: 10.7 MB (10654495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb07ad444272e25cc684a6461ff2a250ff675dda4ed0170f64eb685ef45a7d1f`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabde002b5720ce9a2a07e4a2ccb8ffd2c6713ef185c33fb18248a4a415f31c`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d06a0fe4f7994c88f4a62b3c2432f79a061cb9ca956b0dccc58efe9bc2daf3`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:f3892104ab424b1915b0cc843a1d63d45f41b5de6b0a1dd65ece13cb44cdc292
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352757842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5564757df4aff471528b0ba10d68d7a5fe5a4f7c90e1ac12ce49d7450c8670`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:38:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 04:38:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 27 Apr 2017 04:38:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 27 Apr 2017 04:38:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 27 Apr 2017 04:39:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:39:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d2564f1295597ce2473cd86e1d84dbec6b823e0865fa4991f81c94dd698943`  
		Last Modified: Thu, 27 Apr 2017 04:42:34 GMT  
		Size: 10.7 MB (10654495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb07ad444272e25cc684a6461ff2a250ff675dda4ed0170f64eb685ef45a7d1f`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabde002b5720ce9a2a07e4a2ccb8ffd2c6713ef185c33fb18248a4a415f31c`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d06a0fe4f7994c88f4a62b3c2432f79a061cb9ca956b0dccc58efe9bc2daf3`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:f3892104ab424b1915b0cc843a1d63d45f41b5de6b0a1dd65ece13cb44cdc292
```

-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352757842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5564757df4aff471528b0ba10d68d7a5fe5a4f7c90e1ac12ce49d7450c8670`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 03:39:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Apr 2017 03:39:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Apr 2017 03:39:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Apr 2017 03:39:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Apr 2017 03:39:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Apr 2017 03:39:12 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Thu, 27 Apr 2017 03:39:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Thu, 27 Apr 2017 03:39:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 03:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Apr 2017 03:42:18 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Apr 2017 03:44:34 GMT
ENV TOMCAT_MAJOR=8
# Thu, 27 Apr 2017 03:44:35 GMT
ENV TOMCAT_VERSION=8.0.43
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz
# Thu, 27 Apr 2017 03:44:36 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz.asc
# Thu, 27 Apr 2017 03:45:39 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Thu, 27 Apr 2017 03:45:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 27 Apr 2017 03:45:42 GMT
EXPOSE 8080/tcp
# Thu, 27 Apr 2017 03:45:43 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:37:48 GMT
ENV GN_FILE=geonetwork.war
# Thu, 27 Apr 2017 04:37:49 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 27 Apr 2017 04:37:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_VERSION=3.2.1
# Thu, 27 Apr 2017 04:37:51 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 27 Apr 2017 04:37:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 27 Apr 2017 04:38:15 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 27 Apr 2017 04:38:16 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 27 Apr 2017 04:38:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:38:18 GMT
CMD ["catalina.sh" "run"]
# Thu, 27 Apr 2017 04:38:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 27 Apr 2017 04:38:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 27 Apr 2017 04:38:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 27 Apr 2017 04:38:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 27 Apr 2017 04:39:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Apr 2017 04:39:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cad96dccb4c86eed08ab18956d351d1bc274923e41202a6d314a4e94a37f678`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04073e2a9145d271da901573db03549e35f576cb458fd3e8bb38dcafc8c808c8`  
		Last Modified: Thu, 27 Apr 2017 03:51:37 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e4bf4be89c79dd17f3ca5349b6f644add2ccd18bbb02380b36e43a4bf67cc9`  
		Last Modified: Thu, 27 Apr 2017 03:51:40 GMT  
		Size: 11.4 MB (11392819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739005fdecc9a3595dd2d9ef14eb1da5371f558c6c882d9c41ffdbb977493745`  
		Last Modified: Thu, 27 Apr 2017 03:57:15 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e968b0d6a29da8640f99b3ea84d6c11d6212f98d999c338f04ecd2cd03464b`  
		Last Modified: Thu, 27 Apr 2017 04:02:12 GMT  
		Size: 9.9 MB (9929028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d280382c526cd6c0d2b6d7d590d324569c5e4f9538acfe217e5e043530c3be`  
		Last Modified: Thu, 27 Apr 2017 04:02:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96fa580ea8dd92817c340af4e1400e5822fc7a180008ddad795e68a8cb1f217`  
		Last Modified: Thu, 27 Apr 2017 04:41:20 GMT  
		Size: 193.9 MB (193924686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112f36915bd24829584076d533d94fdee09ffdb5cfbbf605df546b658ee6617a`  
		Last Modified: Thu, 27 Apr 2017 04:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d2564f1295597ce2473cd86e1d84dbec6b823e0865fa4991f81c94dd698943`  
		Last Modified: Thu, 27 Apr 2017 04:42:34 GMT  
		Size: 10.7 MB (10654495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb07ad444272e25cc684a6461ff2a250ff675dda4ed0170f64eb685ef45a7d1f`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabde002b5720ce9a2a07e4a2ccb8ffd2c6713ef185c33fb18248a4a415f31c`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d06a0fe4f7994c88f4a62b3c2432f79a061cb9ca956b0dccc58efe9bc2daf3`  
		Last Modified: Thu, 27 Apr 2017 04:42:32 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
