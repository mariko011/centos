## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:61bf543b9f52690b14b612f7cb709802a5e088ede1ccdca782b4aae0a2b7e74b
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.2 MB (560234286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320edf8ef7005b5789a24137c2c52c79e73529783e8a3aafb74b773db67d4f52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

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
# Fri, 23 Jun 2017 12:41:47 GMT
ENV TOMCAT_VERSION=8.5.15
# Fri, 23 Jun 2017 12:41:48 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz
# Fri, 23 Jun 2017 12:41:49 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz.asc
# Fri, 23 Jun 2017 12:42:33 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Fri, 23 Jun 2017 12:42:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 23 Jun 2017 12:42:37 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 12:42:38 GMT
CMD ["catalina.sh" "run"]
# Fri, 23 Jun 2017 13:12:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Fri, 23 Jun 2017 13:13:30 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 13:13:32 GMT
ENV XWIKI_VERSION=8.4.5
# Fri, 23 Jun 2017 13:13:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Fri, 23 Jun 2017 13:13:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Fri, 23 Jun 2017 13:14:12 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Fri, 23 Jun 2017 13:14:14 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Fri, 23 Jun 2017 13:14:15 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Fri, 23 Jun 2017 13:14:17 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Fri, 23 Jun 2017 13:14:18 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Fri, 23 Jun 2017 13:14:20 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Fri, 23 Jun 2017 13:14:21 GMT
VOLUME [/usr/local/xwiki]
# Fri, 23 Jun 2017 13:14:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 13:14:24 GMT
CMD ["xwiki"]
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
	-	`sha256:af8db6b47e7a737530a0f6cd482d00d5804eb02d4637bef6f461b28bfa96753c`  
		Last Modified: Sun, 25 Jun 2017 03:04:41 GMT  
		Size: 10.0 MB (9985738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfbc31dbce5f67a2d3dca68e6274e9be888bf4e3ba246de793136106e045a17`  
		Last Modified: Sun, 25 Jun 2017 03:04:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa77ab19e1eb2f7ec0298971c38e2a8ed2bf540bc20abca5e3b75d5167f15ca`  
		Last Modified: Sun, 25 Jun 2017 06:20:29 GMT  
		Size: 182.1 MB (182146740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5843873ed0702b0b57ea7da4e7b0fd15c98079a8b5c177bc3f2193b6138dde`  
		Last Modified: Sun, 25 Jun 2017 06:20:11 GMT  
		Size: 237.0 MB (237028738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbabac5de03fcb3fa49d2de2ef727b706199b0b050f21bdbc8e4b41d23fa354`  
		Last Modified: Sun, 25 Jun 2017 06:19:47 GMT  
		Size: 938.2 KB (938162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3914e535a050e32a0afa2616e0ec7d7534ab6c6e68301278ac4e8ba6fbc455d`  
		Last Modified: Sun, 25 Jun 2017 06:19:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1820d44742f3da07d8063b938be3bd41280ffbb148213429e4407326f3d18ef7`  
		Last Modified: Sun, 25 Jun 2017 06:19:48 GMT  
		Size: 2.3 KB (2272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02023d824e7c878ce7314a77088c282d75bc71e02c09297a2a3e67278d1e92eb`  
		Last Modified: Sun, 25 Jun 2017 06:19:46 GMT  
		Size: 3.7 KB (3697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c7908111b56b8c3810ba6b753888cd8901b141f2525f6cdbf70f4522b9ce0d`  
		Last Modified: Sun, 25 Jun 2017 06:19:47 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
