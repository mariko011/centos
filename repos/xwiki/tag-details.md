<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `xwiki`

-	[`xwiki:8`](#xwiki8)
-	[`xwiki:8.4`](#xwiki84)
-	[`xwiki:8.4.5`](#xwiki845)
-	[`xwiki:8.4.5-postgres-tomcat`](#xwiki845-postgres-tomcat)
-	[`xwiki:8.4-postgres-tomcat`](#xwiki84-postgres-tomcat)
-	[`xwiki:8-mysql-tomcat`](#xwiki8-mysql-tomcat)
-	[`xwiki:8-postgres-tomcat`](#xwiki8-postgres-tomcat)
-	[`xwiki:9`](#xwiki9)
-	[`xwiki:9.7`](#xwiki97)
-	[`xwiki:9.7-postgres-tomcat`](#xwiki97-postgres-tomcat)
-	[`xwiki:9-mysql-tomcat`](#xwiki9-mysql-tomcat)
-	[`xwiki:9-postgres-tomcat`](#xwiki9-postgres-tomcat)
-	[`xwiki:latest`](#xwikilatest)
-	[`xwiki:lts`](#xwikilts)
-	[`xwiki:lts-mysql`](#xwikilts-mysql)
-	[`xwiki:lts-mysql-tomcat`](#xwikilts-mysql-tomcat)
-	[`xwiki:lts-postgres`](#xwikilts-postgres)
-	[`xwiki:lts-postgres-tomcat`](#xwikilts-postgres-tomcat)
-	[`xwiki:mysql-tomcat`](#xwikimysql-tomcat)
-	[`xwiki:postgres-tomcat`](#xwikipostgres-tomcat)
-	[`xwiki:stable`](#xwikistable)
-	[`xwiki:stable-mysql`](#xwikistable-mysql)
-	[`xwiki:stable-mysql-tomcat`](#xwikistable-mysql-tomcat)
-	[`xwiki:stable-postgres`](#xwikistable-postgres)
-	[`xwiki:stable-postgres-tomcat`](#xwikistable-postgres-tomcat)

## `xwiki:8`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8.4` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4.5`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8.4.5` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8.4.5-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4-postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8.4-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8-mysql-tomcat`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8-postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:8-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.7`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.7` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.7-postgres-tomcat`

```console
$ docker pull xwiki@sha256:6cd4273114e892317065743b3e6ba0fef1784871e717c37687f722185735ae8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.7-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e8c958f333a3e5d635a32b1b9bb7a4292a3b0c59baa4e338b051819378bf5aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.6 MB (617592870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f7bca980c50051afd3c7307e66d4f5aea8d8ed099873382d31f7f2fc30560`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:04:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:06:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:06:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:06:16 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:06:16 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:06:16 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:06:17 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d2986e977a1cc9f9bb5a92972d950e06e4c6e99403a73abea4078f0c40307a`  
		Last Modified: Thu, 14 Sep 2017 08:10:26 GMT  
		Size: 221.2 MB (221152911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d0beb2445c3f80584eda666533b2baf846981b0cd1dd907082e08b66b57f6`  
		Last Modified: Thu, 14 Sep 2017 08:10:07 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e908c3ff2b963e93ab11f09056263d59070501ed2f7e53cc5432b8ebdeef90f`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd9503ecb8cb080b2643571a624338f092f41c9d714fe02b4750a950011eb41`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c679c155bdd16e9a5de26031588091efedaf5899886a1ef85038d7b03144352`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc06cf26aef439dd43feaaf5f0e43190c567812b430ee37fcbbabcb998ab34`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:6cd4273114e892317065743b3e6ba0fef1784871e717c37687f722185735ae8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e8c958f333a3e5d635a32b1b9bb7a4292a3b0c59baa4e338b051819378bf5aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.6 MB (617592870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f7bca980c50051afd3c7307e66d4f5aea8d8ed099873382d31f7f2fc30560`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:04:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:06:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:06:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:06:16 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:06:16 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:06:16 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:06:17 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d2986e977a1cc9f9bb5a92972d950e06e4c6e99403a73abea4078f0c40307a`  
		Last Modified: Thu, 14 Sep 2017 08:10:26 GMT  
		Size: 221.2 MB (221152911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d0beb2445c3f80584eda666533b2baf846981b0cd1dd907082e08b66b57f6`  
		Last Modified: Thu, 14 Sep 2017 08:10:07 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e908c3ff2b963e93ab11f09056263d59070501ed2f7e53cc5432b8ebdeef90f`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd9503ecb8cb080b2643571a624338f092f41c9d714fe02b4750a950011eb41`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c679c155bdd16e9a5de26031588091efedaf5899886a1ef85038d7b03144352`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc06cf26aef439dd43feaaf5f0e43190c567812b430ee37fcbbabcb998ab34`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:e4e8490b9591c761aa8e3ec1d1580b8781293b07a8df02ae6ac30ad7060dd82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

```console
$ docker pull xwiki@sha256:8b87cb6e73afd265781ba1366a0d65b672fed7ade95b347830020d7d98873f7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.3 MB (633292492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0bc7b3fa1acedbcb2884f82eeffa1b194c3e5a789e7e2f179b695625b46c18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

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
# Wed, 13 Sep 2017 17:38:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 13 Sep 2017 17:38:36 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:38:36 GMT
ENV XWIKI_VERSION=8.4.5
# Wed, 13 Sep 2017 17:38:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Wed, 13 Sep 2017 17:38:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Wed, 13 Sep 2017 17:39:47 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 13 Sep 2017 17:39:49 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 13 Sep 2017 17:39:50 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Wed, 13 Sep 2017 17:39:50 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Wed, 13 Sep 2017 17:39:50 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Wed, 13 Sep 2017 17:39:51 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Sep 2017 17:39:51 GMT
VOLUME [/usr/local/xwiki]
# Wed, 13 Sep 2017 17:39:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:39:51 GMT
CMD ["xwiki"]
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
	-	`sha256:1ef77977c417cf106f8bcae8031909008b92d41d5e1951142b0b780a53f3bbab`  
		Last Modified: Wed, 13 Sep 2017 17:46:31 GMT  
		Size: 157.0 MB (157021738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d1c7c9adab670397ec10e79ce1f0f774b92f0702400f7fe9a3dd3b82ba5b4e`  
		Last Modified: Wed, 13 Sep 2017 17:46:32 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168b9fa56257fa14a69d37aaa0654e73f267388da4c17a62bb76f1f10028b2f6`  
		Last Modified: Wed, 13 Sep 2017 17:45:53 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce81a1f30a7e63c9bc72aa57370db453a5ac7b07a9ee1e3bf578398c89b6d886`  
		Last Modified: Wed, 13 Sep 2017 17:45:51 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8393908eb5f6e71419ecc16a0c63939adabca4b8b59036b227a5491fc162aee3`  
		Last Modified: Wed, 13 Sep 2017 17:45:51 GMT  
		Size: 2.3 KB (2294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a4b8f394f6706bf01ec4968249e34c0880df9979943f2cddf2c0372658fb84`  
		Last Modified: Wed, 13 Sep 2017 17:45:51 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6330d285ec9674a4d5ac74b6f2e5e3eb2bc2cb692d9eee966dad00ae19e29845`  
		Last Modified: Wed, 13 Sep 2017 17:45:52 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:df7e766d3df1127ec5afeea0155ed856e6af03ca918ffe761187c32e3f633be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e5ee8a2989bf8c28da55fd852f4b0adcd80862bdd853de0a82f2c00edf95b427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.2 MB (634226308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10821c499aedb6fbf7fa7455c95bf4ae6bb60b2e618bf1fc594b2a9cc6852cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:00:37 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:01:49 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:01:51 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:01:53 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:01:54 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:01:54 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:01:54 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:01:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:01:55 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ffe5b386a06d5a80a8aafaf9eb3cc8d23a4b0a7bfa364c874ec72df0b680`  
		Last Modified: Thu, 14 Sep 2017 08:06:57 GMT  
		Size: 237.0 MB (237036103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707e4bca0302e1322e8985bc9bb7308bbc5b138c0ef511732c8416fea09dd9f`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 952.1 KB (952118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f78defeac69e4f48df62c9d8cab4da3ecb68781b8dbabbf5e7124548a9909`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db40a0aa5ece4678be6c0916ed94ca52c463f3160980e963d00b4b6714493`  
		Last Modified: Thu, 14 Sep 2017 08:06:37 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec0db10e762935c675f4f02b79e7e878c0eb23e549a0e81e3c0de841a892d0c`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3dab46e9398c2597998c36a048ee425d1e72648c9d92cbd3a4e85a14eb445`  
		Last Modified: Thu, 14 Sep 2017 08:06:38 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:9de65c07ca2104d4b683acd80be364ce6bbbc79cdddd772c87e020ff29e5aec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ab7dc73f102d3981ead17827166f066ad627d9e000420752b62e762fadf66dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.5 MB (633476196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e822c304b50a4e58c719197764d00da3329aa690fe955118eb0080507ce20fb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_VERSION=8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Thu, 14 Sep 2017 08:03:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Thu, 14 Sep 2017 08:04:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:04:42 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:04:43 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:04:44 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:04:44 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:04:44 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:04:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:04:44 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4432e4fb87201ebfc1a7ba0a5154fb53da29df2c92934f41a6bc8c5c00752460`  
		Last Modified: Thu, 14 Sep 2017 08:09:20 GMT  
		Size: 237.0 MB (237036055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9b0426887ce89ede608050ce0e64319ca4ea3dc0d91fddb81cf7e61086f0e`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3cf9247357b2736befe3d8b1850df9604a6649a3b056d0f753a9f0743bc5a0`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5ac4faaf1f40291125d7a22a4eb20afbb37ba2adcc34f46e179f36c2b963db`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbd4a0755a896cbb823635c6d237e50bd53adb4d90cf4b115d4706d8660078`  
		Last Modified: Thu, 14 Sep 2017 08:09:03 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd34b5d5bf24bb372f159241d475e99064067d003d8571d8942aacfdec8f691`  
		Last Modified: Thu, 14 Sep 2017 08:09:02 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e8d957fc294e16c6d5e6577bb28b2f5095e00761b9a867c0ee23ec601a1d12b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:d11129c474617ce5aaa87bd8e6546f739cce00907b165d2883fbda7d59ead596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **618.3 MB (618342944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172ec312b1de5957ab875a0031c50ff779984aa342961bd9052e6029354605f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:00:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:01:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:01:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:03:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:03:03 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:03:03 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:03:04 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:03:04 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:03:05 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:03:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67199755c967104f27a238efbd67621241a56f6a9ff509403213e7a1fa1309`  
		Last Modified: Thu, 14 Sep 2017 08:07:03 GMT  
		Size: 157.0 MB (157021742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc50c1f6080dbd2fd9a21062bcaa239d82a1e95cb24fd10de9e5de9cc5390c95`  
		Last Modified: Thu, 14 Sep 2017 08:08:24 GMT  
		Size: 221.2 MB (221152896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8595d19e12eb9bd182a26429e42017f1eeab1d851943a101c6f71b4f89128c0c`  
		Last Modified: Thu, 14 Sep 2017 08:08:02 GMT  
		Size: 952.1 KB (952117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cb8f3d499f60949dddc5032cdd5c38257306af3dc4bf4f213752d315e0becf`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc373510f0fddb26bc83676e3dcb3cc2c60231d1921338c2c4657c60eacf6539`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68539723c2618d4f2e091120e7ae1d6609cfea77c75f47298e3e067736d22c`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97021a53b5d6cd2391c7d6b0df93f10d8cbf87dbb1783fdae488c4fbf2b226f`  
		Last Modified: Thu, 14 Sep 2017 08:08:01 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:6cd4273114e892317065743b3e6ba0fef1784871e717c37687f722185735ae8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:e8c958f333a3e5d635a32b1b9bb7a4292a3b0c59baa4e338b051819378bf5aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.6 MB (617592870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f7bca980c50051afd3c7307e66d4f5aea8d8ed099873382d31f7f2fc30560`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:04:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:06:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:06:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:06:16 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:06:16 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:06:16 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:06:17 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d2986e977a1cc9f9bb5a92972d950e06e4c6e99403a73abea4078f0c40307a`  
		Last Modified: Thu, 14 Sep 2017 08:10:26 GMT  
		Size: 221.2 MB (221152911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d0beb2445c3f80584eda666533b2baf846981b0cd1dd907082e08b66b57f6`  
		Last Modified: Thu, 14 Sep 2017 08:10:07 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e908c3ff2b963e93ab11f09056263d59070501ed2f7e53cc5432b8ebdeef90f`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd9503ecb8cb080b2643571a624338f092f41c9d714fe02b4750a950011eb41`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c679c155bdd16e9a5de26031588091efedaf5899886a1ef85038d7b03144352`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc06cf26aef439dd43feaaf5f0e43190c567812b430ee37fcbbabcb998ab34`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:6cd4273114e892317065743b3e6ba0fef1784871e717c37687f722185735ae8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e8c958f333a3e5d635a32b1b9bb7a4292a3b0c59baa4e338b051819378bf5aff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.6 MB (617592870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972f7bca980c50051afd3c7307e66d4f5aea8d8ed099873382d31f7f2fc30560`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:48:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:48:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 14 Sep 2017 06:48:04 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 14 Sep 2017 06:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:48:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:48:20 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:52:10 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:53:47 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:53:48 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:16 GMT
RUN set -x 		&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:25 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:25 GMT
CMD ["catalina.sh" "run"]
# Thu, 14 Sep 2017 08:00:00 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 14 Sep 2017 08:03:37 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_VERSION=9.7
# Thu, 14 Sep 2017 08:04:47 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.7
# Thu, 14 Sep 2017 08:04:48 GMT
ENV XWIKI_DOWNLOAD_SHA256=511edf81e9776b627d1a8aa200f6e377ab75c1821d7360d77a27092ad1ebf418
# Thu, 14 Sep 2017 08:06:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 14 Sep 2017 08:06:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Thu, 14 Sep 2017 08:06:15 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 14 Sep 2017 08:06:16 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 14 Sep 2017 08:06:16 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 14 Sep 2017 08:06:16 GMT
VOLUME [/usr/local/xwiki]
# Thu, 14 Sep 2017 08:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 08:06:17 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dc7810fc78652b2e6b448476a3f3bb46e33e4cde8d715848bdb6cb00f726cf`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afd531fccde7eb906004a8ad6814bdb71d9856357f6e8482772aecac03e0ca3`  
		Last Modified: Thu, 14 Sep 2017 06:58:01 GMT  
		Size: 545.6 KB (545612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8cb6ef92d5bd36f8ed46b2765bf53d412f77fdfa3ce6a10756ab00dc8e47b7`  
		Last Modified: Thu, 14 Sep 2017 06:58:00 GMT  
		Size: 112.3 KB (112269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141c5a896ef962928fc1c9b9e6752cebe340f56e0528c3f65279ae20284ebde7`  
		Last Modified: Thu, 14 Sep 2017 07:00:10 GMT  
		Size: 10.4 MB (10391231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b65a5bf785aaaa85deb9e36ff7dbb6ac99513e636a30e54a17159e010d3c22`  
		Last Modified: Thu, 14 Sep 2017 07:00:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163e879c557e361a33b3aa4f496ae3825d243f773c7b1910c31bfd4c5c3175d2`  
		Last Modified: Thu, 14 Sep 2017 08:09:28 GMT  
		Size: 156.6 MB (156604763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d2986e977a1cc9f9bb5a92972d950e06e4c6e99403a73abea4078f0c40307a`  
		Last Modified: Thu, 14 Sep 2017 08:10:26 GMT  
		Size: 221.2 MB (221152911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291d0beb2445c3f80584eda666533b2baf846981b0cd1dd907082e08b66b57f6`  
		Last Modified: Thu, 14 Sep 2017 08:10:07 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e908c3ff2b963e93ab11f09056263d59070501ed2f7e53cc5432b8ebdeef90f`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd9503ecb8cb080b2643571a624338f092f41c9d714fe02b4750a950011eb41`  
		Last Modified: Thu, 14 Sep 2017 08:10:05 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c679c155bdd16e9a5de26031588091efedaf5899886a1ef85038d7b03144352`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 3.4 KB (3408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc06cf26aef439dd43feaaf5f0e43190c567812b430ee37fcbbabcb998ab34`  
		Last Modified: Thu, 14 Sep 2017 08:10:06 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
