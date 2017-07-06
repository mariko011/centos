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
$ docker pull geonetwork@sha256:d34e6458e00253ad5f38d35b33c5859359304dd8b848a08a6d1ca79654a413d6
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303826877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7fce97c22cda010f20bcf33becf2335ba111bf74aa1f925c173fdae10c1cce2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:39:22 GMT
ENV JAVA_VERSION=7u131
# Fri, 23 Jun 2017 02:39:23 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 23 Jun 2017 02:40:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 12:25:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:25:26 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:25:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:25:29 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:25:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:25:33 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:29:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:29:49 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:33:17 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 01:30:12 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 01:30:13 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 01:30:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 01:32:59 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 01:33:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 01:33:06 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 01:33:07 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:07:06 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:07:07 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:07:08 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:07:09 GMT
ENV GN_VERSION=3.0.5
# Thu, 06 Jul 2017 02:07:10 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 06 Jul 2017 02:07:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:07:25 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:07:27 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:07:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:07:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7597bbbc15eaa21f4ab9d657cc3d1f3a16c37cda4a830d4349991be1ca171`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5ed4ce77dc8f2530a7aaa9b60382eeff882b4df410708d734c688b763a59c4`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63038208f189c3299131b8b50b19a8ca64b2186c57b51a027737bc7fccd94c3e`  
		Last Modified: Sat, 24 Jun 2017 17:01:36 GMT  
		Size: 78.7 MB (78694647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1138b1f02201a635baa1b57c6e01f94b13acb3e47856b61beb23e37ed857cf6b`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f027013454f182db9133b705752bc2280294b1b0d87993bdf23638fd84557b81`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf8eaed89c288fd00e541131001725b158c3f6b15b1206e26065670dfaa363`  
		Last Modified: Sun, 25 Jun 2017 02:46:04 GMT  
		Size: 3.2 MB (3233469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08038cdd003c86e29c5111f7951c306453500bbbbf80f024873ead61c10c549c`  
		Last Modified: Sun, 25 Jun 2017 02:50:18 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4e7a2b1cd2e2e83a603785ce9c2db97e7779c59cefe045c02900b1d29226ee`  
		Last Modified: Tue, 04 Jul 2017 05:35:18 GMT  
		Size: 10.0 MB (9969896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be2c6abf594e55268de02789ae969f4392fd1d6c3ada26f5fbd1a95d362af3`  
		Last Modified: Tue, 04 Jul 2017 05:35:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f932d7a5e45bdbb4c0ba17636b7599427a5362aad59cf19ff26c26ca128013eb`  
		Last Modified: Thu, 06 Jul 2017 02:14:49 GMT  
		Size: 139.4 MB (139366103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a92dcd2e305c1751faf5291eae39bbad742af8480d11096bdcde5c73f60f819`  
		Last Modified: Thu, 06 Jul 2017 02:14:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:d34e6458e00253ad5f38d35b33c5859359304dd8b848a08a6d1ca79654a413d6
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303826877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7fce97c22cda010f20bcf33becf2335ba111bf74aa1f925c173fdae10c1cce2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:39:22 GMT
ENV JAVA_VERSION=7u131
# Fri, 23 Jun 2017 02:39:23 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 23 Jun 2017 02:40:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 12:25:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:25:26 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:25:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:25:29 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:25:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:25:33 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:29:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:29:49 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:33:17 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 01:30:12 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 01:30:13 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 01:30:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 01:32:59 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 01:33:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 01:33:06 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 01:33:07 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:07:06 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:07:07 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:07:08 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:07:09 GMT
ENV GN_VERSION=3.0.5
# Thu, 06 Jul 2017 02:07:10 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 06 Jul 2017 02:07:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:07:25 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:07:27 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:07:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:07:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7597bbbc15eaa21f4ab9d657cc3d1f3a16c37cda4a830d4349991be1ca171`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5ed4ce77dc8f2530a7aaa9b60382eeff882b4df410708d734c688b763a59c4`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63038208f189c3299131b8b50b19a8ca64b2186c57b51a027737bc7fccd94c3e`  
		Last Modified: Sat, 24 Jun 2017 17:01:36 GMT  
		Size: 78.7 MB (78694647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1138b1f02201a635baa1b57c6e01f94b13acb3e47856b61beb23e37ed857cf6b`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f027013454f182db9133b705752bc2280294b1b0d87993bdf23638fd84557b81`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf8eaed89c288fd00e541131001725b158c3f6b15b1206e26065670dfaa363`  
		Last Modified: Sun, 25 Jun 2017 02:46:04 GMT  
		Size: 3.2 MB (3233469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08038cdd003c86e29c5111f7951c306453500bbbbf80f024873ead61c10c549c`  
		Last Modified: Sun, 25 Jun 2017 02:50:18 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4e7a2b1cd2e2e83a603785ce9c2db97e7779c59cefe045c02900b1d29226ee`  
		Last Modified: Tue, 04 Jul 2017 05:35:18 GMT  
		Size: 10.0 MB (9969896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be2c6abf594e55268de02789ae969f4392fd1d6c3ada26f5fbd1a95d362af3`  
		Last Modified: Tue, 04 Jul 2017 05:35:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f932d7a5e45bdbb4c0ba17636b7599427a5362aad59cf19ff26c26ca128013eb`  
		Last Modified: Thu, 06 Jul 2017 02:14:49 GMT  
		Size: 139.4 MB (139366103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a92dcd2e305c1751faf5291eae39bbad742af8480d11096bdcde5c73f60f819`  
		Last Modified: Thu, 06 Jul 2017 02:14:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:cf811c06c413efdc845e26dcc4470786d38236c08b8c95a15dba0b0ac228beed
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 MB (314500819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda2569336ea7e0964ef4110524d535ec9505c8f24ffee34ed968bdbb4f5196f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:39:22 GMT
ENV JAVA_VERSION=7u131
# Fri, 23 Jun 2017 02:39:23 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 23 Jun 2017 02:40:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 12:25:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:25:26 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:25:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:25:29 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:25:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:25:33 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:29:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:29:49 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:33:17 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 01:30:12 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 01:30:13 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 01:30:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 01:32:59 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 01:33:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 01:33:06 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 01:33:07 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:07:06 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:07:07 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:07:08 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:07:09 GMT
ENV GN_VERSION=3.0.5
# Thu, 06 Jul 2017 02:07:10 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 06 Jul 2017 02:07:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:07:25 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:07:27 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:07:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:07:29 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:11 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:10:13 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 06 Jul 2017 02:10:15 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 06 Jul 2017 02:10:16 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 06 Jul 2017 02:10:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:10:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7597bbbc15eaa21f4ab9d657cc3d1f3a16c37cda4a830d4349991be1ca171`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5ed4ce77dc8f2530a7aaa9b60382eeff882b4df410708d734c688b763a59c4`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63038208f189c3299131b8b50b19a8ca64b2186c57b51a027737bc7fccd94c3e`  
		Last Modified: Sat, 24 Jun 2017 17:01:36 GMT  
		Size: 78.7 MB (78694647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1138b1f02201a635baa1b57c6e01f94b13acb3e47856b61beb23e37ed857cf6b`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f027013454f182db9133b705752bc2280294b1b0d87993bdf23638fd84557b81`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf8eaed89c288fd00e541131001725b158c3f6b15b1206e26065670dfaa363`  
		Last Modified: Sun, 25 Jun 2017 02:46:04 GMT  
		Size: 3.2 MB (3233469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08038cdd003c86e29c5111f7951c306453500bbbbf80f024873ead61c10c549c`  
		Last Modified: Sun, 25 Jun 2017 02:50:18 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4e7a2b1cd2e2e83a603785ce9c2db97e7779c59cefe045c02900b1d29226ee`  
		Last Modified: Tue, 04 Jul 2017 05:35:18 GMT  
		Size: 10.0 MB (9969896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be2c6abf594e55268de02789ae969f4392fd1d6c3ada26f5fbd1a95d362af3`  
		Last Modified: Tue, 04 Jul 2017 05:35:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f932d7a5e45bdbb4c0ba17636b7599427a5362aad59cf19ff26c26ca128013eb`  
		Last Modified: Thu, 06 Jul 2017 02:14:49 GMT  
		Size: 139.4 MB (139366103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a92dcd2e305c1751faf5291eae39bbad742af8480d11096bdcde5c73f60f819`  
		Last Modified: Thu, 06 Jul 2017 02:14:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afcc218ddc55d1b26d4d1ef207c2b597994d41d276eddf27c7dcec5109f4041`  
		Last Modified: Thu, 06 Jul 2017 02:18:32 GMT  
		Size: 10.7 MB (10671818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d64061c20bfb90a461dda7a9ba20e6f5d2a8e0da70c88b43d5ba5d7dfff03`  
		Last Modified: Thu, 06 Jul 2017 02:18:28 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8489a3e6260c74fd04b0e1ac2965ebf29fb77e64a095d28684d81766d30ce7`  
		Last Modified: Thu, 06 Jul 2017 02:18:29 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a93a8dda1bdc9cfb27df2c6014f2043d01c434e2444af5ee377d00ce4b319`  
		Last Modified: Thu, 06 Jul 2017 02:18:28 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:cf811c06c413efdc845e26dcc4470786d38236c08b8c95a15dba0b0ac228beed
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 MB (314500819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda2569336ea7e0964ef4110524d535ec9505c8f24ffee34ed968bdbb4f5196f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:39:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:39:22 GMT
ENV JAVA_VERSION=7u131
# Fri, 23 Jun 2017 02:39:23 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 23 Jun 2017 02:40:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 12:25:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:25:26 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:25:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:25:29 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:25:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:25:31 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:25:33 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:29:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:29:49 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:33:17 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 01:30:12 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 01:30:13 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 01:30:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 01:32:59 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 01:33:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 01:33:06 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 01:33:07 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:07:06 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:07:07 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:07:08 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:07:09 GMT
ENV GN_VERSION=3.0.5
# Thu, 06 Jul 2017 02:07:10 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Thu, 06 Jul 2017 02:07:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:07:25 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:07:27 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:07:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:07:29 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:11 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:10:13 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 06 Jul 2017 02:10:15 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 06 Jul 2017 02:10:16 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 06 Jul 2017 02:10:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:10:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7597bbbc15eaa21f4ab9d657cc3d1f3a16c37cda4a830d4349991be1ca171`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5ed4ce77dc8f2530a7aaa9b60382eeff882b4df410708d734c688b763a59c4`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63038208f189c3299131b8b50b19a8ca64b2186c57b51a027737bc7fccd94c3e`  
		Last Modified: Sat, 24 Jun 2017 17:01:36 GMT  
		Size: 78.7 MB (78694647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1138b1f02201a635baa1b57c6e01f94b13acb3e47856b61beb23e37ed857cf6b`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f027013454f182db9133b705752bc2280294b1b0d87993bdf23638fd84557b81`  
		Last Modified: Sun, 25 Jun 2017 02:46:03 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cf8eaed89c288fd00e541131001725b158c3f6b15b1206e26065670dfaa363`  
		Last Modified: Sun, 25 Jun 2017 02:46:04 GMT  
		Size: 3.2 MB (3233469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08038cdd003c86e29c5111f7951c306453500bbbbf80f024873ead61c10c549c`  
		Last Modified: Sun, 25 Jun 2017 02:50:18 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4e7a2b1cd2e2e83a603785ce9c2db97e7779c59cefe045c02900b1d29226ee`  
		Last Modified: Tue, 04 Jul 2017 05:35:18 GMT  
		Size: 10.0 MB (9969896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be2c6abf594e55268de02789ae969f4392fd1d6c3ada26f5fbd1a95d362af3`  
		Last Modified: Tue, 04 Jul 2017 05:35:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f932d7a5e45bdbb4c0ba17636b7599427a5362aad59cf19ff26c26ca128013eb`  
		Last Modified: Thu, 06 Jul 2017 02:14:49 GMT  
		Size: 139.4 MB (139366103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a92dcd2e305c1751faf5291eae39bbad742af8480d11096bdcde5c73f60f819`  
		Last Modified: Thu, 06 Jul 2017 02:14:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afcc218ddc55d1b26d4d1ef207c2b597994d41d276eddf27c7dcec5109f4041`  
		Last Modified: Thu, 06 Jul 2017 02:18:32 GMT  
		Size: 10.7 MB (10671818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7d64061c20bfb90a461dda7a9ba20e6f5d2a8e0da70c88b43d5ba5d7dfff03`  
		Last Modified: Thu, 06 Jul 2017 02:18:28 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8489a3e6260c74fd04b0e1ac2965ebf29fb77e64a095d28684d81766d30ce7`  
		Last Modified: Thu, 06 Jul 2017 02:18:29 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439a93a8dda1bdc9cfb27df2c6014f2043d01c434e2444af5ee377d00ce4b319`  
		Last Modified: Thu, 06 Jul 2017 02:18:28 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1`

```console
$ docker pull geonetwork@sha256:fcd282b2ea4de92038aa7d4e9682c0c3ba903164065775bed3fb456b4b6abba3
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333992106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d079b92aa95d48e11260b4488a48dc98b8e36c2cc49dcbe4a1c745677384ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:fcd282b2ea4de92038aa7d4e9682c0c3ba903164065775bed3fb456b4b6abba3
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333992106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d079b92aa95d48e11260b4488a48dc98b8e36c2cc49dcbe4a1c745677384ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:fcd282b2ea4de92038aa7d4e9682c0c3ba903164065775bed3fb456b4b6abba3
```

-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333992106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d079b92aa95d48e11260b4488a48dc98b8e36c2cc49dcbe4a1c745677384ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1-postgres`

```console
$ docker pull geonetwork@sha256:7827c244550792f5d5a54ceedc1379ff2d27f21ed6cd279640f71809b38b6a04
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344635692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88dd844ee975fd878d57851f1faacde2c0f609a999b3ad585905f8f9ab32288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:13:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:13:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 06 Jul 2017 02:13:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 06 Jul 2017 02:13:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 06 Jul 2017 02:14:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:14:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17a6ff1b9f09891863338ba3245f5c9f005df8be067b123ce8038ed10ff2858`  
		Last Modified: Thu, 06 Jul 2017 02:24:05 GMT  
		Size: 10.6 MB (10640893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae4d4e453a4f42ab3dcb349cbc08c5af66b2a107dfb44fa26891526d035f4fe`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13601c7fad6cdbd98790f9d1bb993f47565ac11b95f7cc10923b32b12170871`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783bda6aa31dbcd517c74398318be15d10b4299c322da1a5724fe4cf7313950c`  
		Last Modified: Thu, 06 Jul 2017 02:24:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:7827c244550792f5d5a54ceedc1379ff2d27f21ed6cd279640f71809b38b6a04
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344635692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88dd844ee975fd878d57851f1faacde2c0f609a999b3ad585905f8f9ab32288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:13:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:13:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 06 Jul 2017 02:13:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 06 Jul 2017 02:13:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 06 Jul 2017 02:14:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:14:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17a6ff1b9f09891863338ba3245f5c9f005df8be067b123ce8038ed10ff2858`  
		Last Modified: Thu, 06 Jul 2017 02:24:05 GMT  
		Size: 10.6 MB (10640893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae4d4e453a4f42ab3dcb349cbc08c5af66b2a107dfb44fa26891526d035f4fe`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13601c7fad6cdbd98790f9d1bb993f47565ac11b95f7cc10923b32b12170871`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783bda6aa31dbcd517c74398318be15d10b4299c322da1a5724fe4cf7313950c`  
		Last Modified: Thu, 06 Jul 2017 02:24:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:7827c244550792f5d5a54ceedc1379ff2d27f21ed6cd279640f71809b38b6a04
```

-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344635692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88dd844ee975fd878d57851f1faacde2c0f609a999b3ad585905f8f9ab32288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:42:37 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:42:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:42:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:42:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 02:42:42 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:42:43 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:42:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:43:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:43:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 12:27:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 12:28:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:28:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 12:28:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 12:28:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 23 Jun 2017 12:28:04 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Fri, 23 Jun 2017 12:28:06 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Fri, 23 Jun 2017 12:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 12:31:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 12:31:45 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:40:26 GMT
ENV TOMCAT_MAJOR=8
# Tue, 04 Jul 2017 02:55:37 GMT
ENV TOMCAT_VERSION=8.0.45
# Tue, 04 Jul 2017 02:55:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
# Tue, 04 Jul 2017 02:56:04 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz.asc
# Tue, 04 Jul 2017 02:57:13 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 04 Jul 2017 02:57:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 04 Jul 2017 02:57:24 GMT
EXPOSE 8080/tcp
# Tue, 04 Jul 2017 02:57:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:10:46 GMT
ENV GN_FILE=geonetwork.war
# Thu, 06 Jul 2017 02:10:47 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Thu, 06 Jul 2017 02:10:48 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Thu, 06 Jul 2017 02:10:48 GMT
ENV GN_VERSION=3.2.1
# Thu, 06 Jul 2017 02:10:49 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Thu, 06 Jul 2017 02:10:51 GMT
WORKDIR /usr/local/tomcat/webapps
# Thu, 06 Jul 2017 02:13:00 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Thu, 06 Jul 2017 02:13:01 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Thu, 06 Jul 2017 02:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:13:03 GMT
CMD ["catalina.sh" "run"]
# Thu, 06 Jul 2017 02:13:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 02:13:57 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Thu, 06 Jul 2017 02:13:58 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Thu, 06 Jul 2017 02:13:59 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Thu, 06 Jul 2017 02:14:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Jul 2017 02:14:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95a7bc6bf9459b773705f47f4d76c50337997a71fffb22f775ad8906f5c8d0`  
		Last Modified: Sat, 24 Jun 2017 17:01:23 GMT  
		Size: 568.5 KB (568520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd307c6c6e7953d9349b4808b361ff7468f0f325b2a662cd48305c7d66b2034`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7da8b0113502d19a00da6d1271fcfda426cd53dcd9698e9ca3e8f06857168f`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74169d04cf0da1c003a94b9ee2fb68acd4fa186f465acb53e28352a8787132dc`  
		Last Modified: Sat, 24 Jun 2017 17:08:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cc0e2943324a0640f6990e4f0789b5d3946b133331c28ba52f3809e5c289f9`  
		Last Modified: Sat, 24 Jun 2017 17:09:06 GMT  
		Size: 54.1 MB (54074870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f5746bc4d33fea165d7c9288d8f8ec9ccb341897c0100f321f869f17aebaa0`  
		Last Modified: Sat, 24 Jun 2017 17:08:56 GMT  
		Size: 289.6 KB (289620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb109ae048060f497adbfc9064b407eda31a3da188a06101e9912c65ffec8905`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac3ea73cee6abaac59b2b05a0274ca6962b21560617c86b300ff161acbfd7d`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24772bc65b4968f4a615d8dd4767e556d08d39af37b83c7542120e37cffebee2`  
		Last Modified: Sun, 25 Jun 2017 02:48:51 GMT  
		Size: 3.2 MB (3199933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03774cef060cea7a5e2ee7f9328666240a3a3353ae9a49dca0ae75c309340fa3`  
		Last Modified: Sun, 25 Jun 2017 02:55:53 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69161af475df2fcdb5f5df6e67bfff331b8a5209504ceb55bc193f8170149fa5`  
		Last Modified: Tue, 04 Jul 2017 05:41:59 GMT  
		Size: 9.9 MB (9940054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc7506e6b520a8f895973ba39aacb2f36fa9ecbd89ba06d78a198910330e6e0`  
		Last Modified: Tue, 04 Jul 2017 05:41:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4078909a0a441158cbcca4ae6c57c50e91f93fab859f248372e50e0fa3e4e0e`  
		Last Modified: Thu, 06 Jul 2017 02:19:57 GMT  
		Size: 193.9 MB (193924649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0251bc49c0a50748470aacd0ad11636351c169a46fee49fb7a54d79aea8fa4`  
		Last Modified: Thu, 06 Jul 2017 02:19:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17a6ff1b9f09891863338ba3245f5c9f005df8be067b123ce8038ed10ff2858`  
		Last Modified: Thu, 06 Jul 2017 02:24:05 GMT  
		Size: 10.6 MB (10640893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae4d4e453a4f42ab3dcb349cbc08c5af66b2a107dfb44fa26891526d035f4fe`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13601c7fad6cdbd98790f9d1bb993f47565ac11b95f7cc10923b32b12170871`  
		Last Modified: Thu, 06 Jul 2017 02:24:01 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783bda6aa31dbcd517c74398318be15d10b4299c322da1a5724fe4cf7313950c`  
		Last Modified: Thu, 06 Jul 2017 02:24:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
