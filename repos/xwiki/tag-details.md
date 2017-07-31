<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `xwiki`

-	[`xwiki:8`](#xwiki8)
-	[`xwiki:8.4`](#xwiki84)
-	[`xwiki:8.4.5`](#xwiki845)
-	[`xwiki:8-mysql-tomcat`](#xwiki8-mysql-tomcat)
-	[`xwiki:mysql-tomcat`](#xwikimysql-tomcat)
-	[`xwiki:lts-mysql-tomcat`](#xwikilts-mysql-tomcat)
-	[`xwiki:lts-mysql`](#xwikilts-mysql)
-	[`xwiki:lts`](#xwikilts)
-	[`xwiki:latest`](#xwikilatest)
-	[`xwiki:9`](#xwiki9)
-	[`xwiki:9.5`](#xwiki95)
-	[`xwiki:9.5.1`](#xwiki951)
-	[`xwiki:9-mysql-tomcat`](#xwiki9-mysql-tomcat)
-	[`xwiki:stable-mysql-tomcat`](#xwikistable-mysql-tomcat)
-	[`xwiki:stable-mysql`](#xwikistable-mysql)
-	[`xwiki:stable`](#xwikistable)
-	[`xwiki:8-postgres-tomcat`](#xwiki8-postgres-tomcat)
-	[`xwiki:8.4-postgres-tomcat`](#xwiki84-postgres-tomcat)
-	[`xwiki:8.4.5-postgres-tomcat`](#xwiki845-postgres-tomcat)
-	[`xwiki:postgres-tomcat`](#xwikipostgres-tomcat)
-	[`xwiki:lts-postgres-tomcat`](#xwikilts-postgres-tomcat)
-	[`xwiki:lts-postgres`](#xwikilts-postgres)
-	[`xwiki:9-postgres-tomcat`](#xwiki9-postgres-tomcat)
-	[`xwiki:9.5-postgres-tomcat`](#xwiki95-postgres-tomcat)
-	[`xwiki:9.5.1-postgres-tomcat`](#xwiki951-postgres-tomcat)
-	[`xwiki:stable-postgres-tomcat`](#xwikistable-postgres-tomcat)
-	[`xwiki:stable-postgres`](#xwikistable-postgres)

## `xwiki:8`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:8.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4.5`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:8.4.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8-mysql-tomcat`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:8-mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:d647e941ae168f92bd151895c3bcd2c85458cff6387c46fd205502f5b0f6d1bd
```

-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **581.0 MB (580975518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474a5df0f595837fa0cc66a5dede562e9b5ae863776fd47bf482dce2d4a748d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:12:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:13:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:13:28 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:13:28 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:13:29 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:13:29 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:13:30 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:13:30 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:13:31 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2975ad768eb9ea34f6d2728fcc71e489c5706a82bbb61a7b201aaf51b203b56`  
		Last Modified: Mon, 31 Jul 2017 22:22:34 GMT  
		Size: 237.0 MB (237028819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730bbce697960b99e175d6cf87d8d6e5f231caaef41e94e87365c5804e72163d`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8741516dc60cbafcab41ccda8a4e22b75b35e8b93d8b12705435c9354b9d7e`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446738cf6e401aacced1429d1262d8fda67a6c2ebf64781442daf6b8612c6871`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd7f5814e6184692d69ea9ea374cfb2a6114a6dd85afb7a6852d7ff3b36020`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f52f7dfafdbe702fd88733e561268fbdb42758afe750286a0e5d1166275dc44`  
		Last Modified: Mon, 31 Jul 2017 22:22:12 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.5`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:9.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.5.1`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:9.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-mysql-tomcat`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:9-mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:37fb001df4b952d9248a6b0f25969040f40b2bb45cd4934431e252c9c9dfc85c
```

-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.9 MB (582918646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7db377051839658752a5e0e7f088c19dd4dccd5350457ebbbb52e93b488bb3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:12:32 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:19:37 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:19:38 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:20:37 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:20:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:20:38 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:20:39 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:20:40 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:20:40 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:20:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:20:40 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f37b6dfa2349cb9b555fe9b19aa2b6e05b2adfc65723ed20f48f19c707f69d2`  
		Last Modified: Mon, 31 Jul 2017 22:22:57 GMT  
		Size: 216.4 MB (216377264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f53495df880cbef5ed66f18089acc61fc73d3e01dddbeb3c2fb9e5921ad3f`  
		Last Modified: Mon, 31 Jul 2017 22:26:25 GMT  
		Size: 239.0 MB (238972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089f4f699aa1be9658f102469e7bf613b333822e0f08819dbe362dc452b3b40`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 952.1 KB (952069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc06c7bd693a67d55c9fd424b43e7c67287f4b7b63e3f9da65bf22855b33c88`  
		Last Modified: Mon, 31 Jul 2017 22:26:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50f5380be3eb175ba1f9b675dfe23764a8e57f6978633402eb786837cacdf1`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febce0377855b50c4758aa615f98ce61c218806dcab0bd6307b1b1997381431a`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6989b617d9d0f664d0596c656d7d2f1083b0353b923a9dbb5150bf76afe9b9f`  
		Last Modified: Mon, 31 Jul 2017 22:26:04 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8-postgres-tomcat`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:8-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4-postgres-tomcat`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:8.4-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:8.4.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:8.4.5-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:fc868f8846b8582fb554d9358c8d5934f249570379ad370f4adf03eebb99e4d1
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.2 MB (580248830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2467cce9a0e4bcad61363bcf2b158441a104d8d1ab69da472d58e465ff5203d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_VERSION=8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Mon, 31 Jul 2017 22:17:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Mon, 31 Jul 2017 22:18:02 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:18:03 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:18:03 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:18:04 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:18:04 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:18:05 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:18:05 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:18:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:18:05 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcdaa245e9ca2d171e63551b0a956968daa20390b30d4578ac7d36525d461ea`  
		Last Modified: Mon, 31 Jul 2017 22:24:47 GMT  
		Size: 237.0 MB (237028813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a394c6588bd368d4c498a8f419f27eafd74a10478a3ecae6a2966a2bd5427bc5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 618.8 KB (618838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe46289396194a8343297f11980ea9f658dfda8ee458dc2487ab62e50e28455`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db932eb3c18f1e15f9ded07793b11dcafd803ce3a7305e57095ffe5d372b34`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f99694c920317e057ac6397fdbd630619fbb78b717cfd838abd7c2a926bf8`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 3.7 KB (3699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98fdd476b99ca063ecf5105b6d672b9b28fc5978485c2c717ae55e7ed578f5`  
		Last Modified: Mon, 31 Jul 2017 22:24:25 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:538ee3038935e1d809561d6bf42db803b5b6aab8db092cd2fac5a372902bc702
```

-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.2 MB (582191939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5643d5d080ed6c2f9c40b96d753b949f1c0c248d1eaff450d6bd04e9fbcbbfa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:20:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:22:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:22:01 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:22:03 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:22:03 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:22:03 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:22:04 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f7e71bff2a844b39d5ac26cac2a22f497342cccaa3ba50de5b25588027208`  
		Last Modified: Mon, 31 Jul 2017 22:27:45 GMT  
		Size: 239.0 MB (238972164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8b0418298e487973d32d67f74324ece657d4c796d7d32c321e822aa01fb9ec`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 618.8 KB (618840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b84195615c18e5c021d34838eea647b01606a3f57e12eaad15c515031ecc50`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e52886733573a92aa03cc675063a9210219493f58419492044e59550ebe1b51`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557810cb31e52c36b06d5c79e4392649ea27e5516ed18631553f335d475a8112`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd48cc52b12d05204d69db1c5e21c7ba8330e8f8cc6680d1b17219f458d44274`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:538ee3038935e1d809561d6bf42db803b5b6aab8db092cd2fac5a372902bc702
```

-	Platforms:
	-	linux; amd64

### `xwiki:9.5-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.2 MB (582191939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5643d5d080ed6c2f9c40b96d753b949f1c0c248d1eaff450d6bd04e9fbcbbfa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:20:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:22:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:22:01 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:22:03 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:22:03 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:22:03 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:22:04 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f7e71bff2a844b39d5ac26cac2a22f497342cccaa3ba50de5b25588027208`  
		Last Modified: Mon, 31 Jul 2017 22:27:45 GMT  
		Size: 239.0 MB (238972164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8b0418298e487973d32d67f74324ece657d4c796d7d32c321e822aa01fb9ec`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 618.8 KB (618840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b84195615c18e5c021d34838eea647b01606a3f57e12eaad15c515031ecc50`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e52886733573a92aa03cc675063a9210219493f58419492044e59550ebe1b51`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557810cb31e52c36b06d5c79e4392649ea27e5516ed18631553f335d475a8112`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd48cc52b12d05204d69db1c5e21c7ba8330e8f8cc6680d1b17219f458d44274`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.5.1-postgres-tomcat`

```console
$ docker pull xwiki@sha256:538ee3038935e1d809561d6bf42db803b5b6aab8db092cd2fac5a372902bc702
```

-	Platforms:
	-	linux; amd64

### `xwiki:9.5.1-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.2 MB (582191939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5643d5d080ed6c2f9c40b96d753b949f1c0c248d1eaff450d6bd04e9fbcbbfa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:20:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:22:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:22:01 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:22:03 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:22:03 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:22:03 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:22:04 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f7e71bff2a844b39d5ac26cac2a22f497342cccaa3ba50de5b25588027208`  
		Last Modified: Mon, 31 Jul 2017 22:27:45 GMT  
		Size: 239.0 MB (238972164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8b0418298e487973d32d67f74324ece657d4c796d7d32c321e822aa01fb9ec`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 618.8 KB (618840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b84195615c18e5c021d34838eea647b01606a3f57e12eaad15c515031ecc50`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e52886733573a92aa03cc675063a9210219493f58419492044e59550ebe1b51`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557810cb31e52c36b06d5c79e4392649ea27e5516ed18631553f335d475a8112`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd48cc52b12d05204d69db1c5e21c7ba8330e8f8cc6680d1b17219f458d44274`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:538ee3038935e1d809561d6bf42db803b5b6aab8db092cd2fac5a372902bc702
```

-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.2 MB (582191939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5643d5d080ed6c2f9c40b96d753b949f1c0c248d1eaff450d6bd04e9fbcbbfa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:20:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:22:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:22:01 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:22:03 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:22:03 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:22:03 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:22:04 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f7e71bff2a844b39d5ac26cac2a22f497342cccaa3ba50de5b25588027208`  
		Last Modified: Mon, 31 Jul 2017 22:27:45 GMT  
		Size: 239.0 MB (238972164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8b0418298e487973d32d67f74324ece657d4c796d7d32c321e822aa01fb9ec`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 618.8 KB (618840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b84195615c18e5c021d34838eea647b01606a3f57e12eaad15c515031ecc50`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e52886733573a92aa03cc675063a9210219493f58419492044e59550ebe1b51`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557810cb31e52c36b06d5c79e4392649ea27e5516ed18631553f335d475a8112`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd48cc52b12d05204d69db1c5e21c7ba8330e8f8cc6680d1b17219f458d44274`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:538ee3038935e1d809561d6bf42db803b5b6aab8db092cd2fac5a372902bc702
```

-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.2 MB (582191939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5643d5d080ed6c2f9c40b96d753b949f1c0c248d1eaff450d6bd04e9fbcbbfa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:34:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:34:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:33:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 27 Jul 2017 20:33:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:33:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 27 Jul 2017 20:33:50 GMT
WORKDIR /usr/local/tomcat
# Thu, 27 Jul 2017 20:33:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 27 Jul 2017 20:33:50 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Thu, 27 Jul 2017 20:33:51 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Thu, 27 Jul 2017 20:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 20:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 27 Jul 2017 20:35:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 27 Jul 2017 20:35:59 GMT
ENV TOMCAT_MAJOR=8
# Mon, 31 Jul 2017 19:40:28 GMT
ENV TOMCAT_VERSION=8.5.19
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz
# Mon, 31 Jul 2017 19:40:29 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.19/bin/apache-tomcat-8.5.19.tar.gz.asc
# Mon, 31 Jul 2017 19:57:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 31 Jul 2017 19:57:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 31 Jul 2017 19:57:17 GMT
EXPOSE 8080/tcp
# Mon, 31 Jul 2017 19:57:18 GMT
CMD ["catalina.sh" "run"]
# Mon, 31 Jul 2017 22:11:45 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Mon, 31 Jul 2017 22:17:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_VERSION=9.5.1
# Mon, 31 Jul 2017 22:20:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.5.1
# Mon, 31 Jul 2017 22:20:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=0636314e46358bc59a2f1d80bae1958cd93db1ed5cd61ae857c6dd6e99e34fac
# Mon, 31 Jul 2017 22:22:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 31 Jul 2017 22:22:01 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Mon, 31 Jul 2017 22:22:02 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 31 Jul 2017 22:22:03 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 31 Jul 2017 22:22:03 GMT
COPY file:f3306bda1e0f4ecdd437f18c3a3736adebb8e117bca1b8ecddf32974aba23fe8 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 31 Jul 2017 22:22:03 GMT
VOLUME [/usr/local/xwiki]
# Mon, 31 Jul 2017 22:22:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 22:22:04 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5595fa1317552509caf4caf8d0865ee2e620b03cf49940cf8fea1825018a95`  
		Last Modified: Wed, 26 Jul 2017 20:39:33 GMT  
		Size: 54.6 MB (54604248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6cc83dc3d79c86999e443f60669ac8b443fe27f3f359c404196c5dac11927`  
		Last Modified: Wed, 26 Jul 2017 20:39:25 GMT  
		Size: 272.0 KB (272023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efe1c932022bd72fae11100cb0aaabd4046f24ccf2043adc794fbdd0afc213e`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef936b7f8424a0fa8719a38ada0b7e7f864d99654d9ca456275b51968e8befa`  
		Last Modified: Thu, 27 Jul 2017 20:39:20 GMT  
		Size: 225.7 KB (225701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1e71063aec0b538de14057cc16360d650527afbcc381965afe7e0e39ab8898`  
		Last Modified: Thu, 27 Jul 2017 20:40:45 GMT  
		Size: 112.3 KB (112272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7602e2398fabae4864a8e2fc76a2aa06891205a94baae9183fe10286051763e`  
		Last Modified: Mon, 31 Jul 2017 20:03:39 GMT  
		Size: 10.1 MB (10103409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ae1a902a9e8766826a30c0576464ead075b51ba71c69e0c3d01031c3684d2b`  
		Last Modified: Mon, 31 Jul 2017 20:03:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79009737d19ba6717e62e09a7f026d65bc50f231e5eac25af29e08ba78fef41c`  
		Last Modified: Mon, 31 Jul 2017 22:25:10 GMT  
		Size: 216.0 MB (215983674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041f7e71bff2a844b39d5ac26cac2a22f497342cccaa3ba50de5b25588027208`  
		Last Modified: Mon, 31 Jul 2017 22:27:45 GMT  
		Size: 239.0 MB (238972164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8b0418298e487973d32d67f74324ece657d4c796d7d32c321e822aa01fb9ec`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 618.8 KB (618840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b84195615c18e5c021d34838eea647b01606a3f57e12eaad15c515031ecc50`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e52886733573a92aa03cc675063a9210219493f58419492044e59550ebe1b51`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 2.4 KB (2409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557810cb31e52c36b06d5c79e4392649ea27e5516ed18631553f335d475a8112`  
		Last Modified: Mon, 31 Jul 2017 22:27:15 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd48cc52b12d05204d69db1c5e21c7ba8330e8f8cc6680d1b17219f458d44274`  
		Last Modified: Mon, 31 Jul 2017 22:27:16 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
