## `xwiki:lts`

```console
$ docker pull xwiki@sha256:c8db96f0d57c3b64494bd03b89827e18cf80f8131d57d88f082efd8c13acba31
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.2 MB (560193526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607189d513ad39c017e25d8e529249ee625ab13d819f0beada122b5c38e4fb8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 May 2017 01:09:32 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 17 May 2017 01:09:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 May 2017 01:09:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 17 May 2017 01:09:35 GMT
WORKDIR /usr/local/tomcat
# Wed, 17 May 2017 01:09:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 17 May 2017 01:09:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 24 May 2017 00:00:39 GMT
ENV OPENSSL_VERSION=1.1.0e-2
# Wed, 24 May 2017 00:00:41 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 24 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 00:04:21 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 May 2017 00:04:27 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 24 May 2017 00:07:42 GMT
ENV TOMCAT_MAJOR=8
# Wed, 24 May 2017 00:09:07 GMT
ENV TOMCAT_VERSION=8.5.15
# Wed, 24 May 2017 00:09:07 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz
# Wed, 24 May 2017 00:09:08 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz.asc
# Wed, 24 May 2017 00:10:08 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:10:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:10:11 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:10:12 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:11:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 24 May 2017 17:12:57 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:12:58 GMT
ENV XWIKI_VERSION=8.4.5
# Wed, 24 May 2017 17:12:59 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Wed, 24 May 2017 17:12:59 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Wed, 24 May 2017 17:13:36 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 24 May 2017 17:13:38 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 24 May 2017 17:13:39 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Wed, 24 May 2017 17:13:40 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Wed, 24 May 2017 17:13:42 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Wed, 24 May 2017 17:13:43 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 May 2017 17:13:44 GMT
VOLUME [/usr/local/xwiki]
# Wed, 24 May 2017 17:13:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 May 2017 17:13:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a47266b20c09fdcb0d6bbd945beadb0bad7111490252c8b893fe59152137b82`  
		Last Modified: Wed, 17 May 2017 01:20:37 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceed6847899473b2d66d72d6558127fcbf63e2de535bd277d173f426292303a`  
		Last Modified: Wed, 24 May 2017 00:14:44 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2f38f223b6e7186d10dbe92ee262a68e20e6dd8915586bbff2d6e11c015454`  
		Last Modified: Wed, 24 May 2017 00:14:46 GMT  
		Size: 3.2 MB (3215087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd58b601cc83437de468c4f9a0273a13b0f56ea7f6dfed2000fbda56dd6c238`  
		Last Modified: Wed, 24 May 2017 00:20:48 GMT  
		Size: 113.8 KB (113849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a39c8509ab2fe337e9b6e4df37206fcb629b616ec23bae94f604bf8f84ff9d`  
		Last Modified: Wed, 24 May 2017 00:28:14 GMT  
		Size: 10.0 MB (9990596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3560d2bf18a14830df30355836db6ac8740fd49b41c321f172fbc8536a63b5cb`  
		Last Modified: Wed, 24 May 2017 00:28:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff2bab5ef05828ea6272d7e21e9db1311b461e76f0270378ebc66f6fb3c851e`  
		Last Modified: Wed, 24 May 2017 17:29:17 GMT  
		Size: 182.1 MB (182104635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f198a169487f112a59b90dbaef95d6854806c8f97817e3eb5b6f64129085e9`  
		Last Modified: Wed, 24 May 2017 17:29:05 GMT  
		Size: 237.0 MB (237028836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa704ae491e188c652476da14dca54c292adcc9b18cb3e5385e1d57b610371c`  
		Last Modified: Wed, 24 May 2017 17:28:34 GMT  
		Size: 938.2 KB (938162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0266938d7e29ecb40a87e1b8b45eb304d47ac29454a51ba176b01e0b093a8163`  
		Last Modified: Wed, 24 May 2017 17:28:33 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8d8e5b46b17cc8d9d05f9a7ce28f661863d55437a03c2a831615101ed99b6d`  
		Last Modified: Wed, 24 May 2017 17:28:33 GMT  
		Size: 2.3 KB (2270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6a3ba13b0d7c8e0292a54904a4eec91a0705fbce0a1ce95d18a665c08b8043`  
		Last Modified: Wed, 24 May 2017 17:28:33 GMT  
		Size: 3.7 KB (3696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9885f8e0c38fa8c7232c439e14312b813789744891cf403a02ca5bac5a78fef6`  
		Last Modified: Wed, 24 May 2017 17:28:33 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
