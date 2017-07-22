## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:b3f3452aee9112b34ae61dd7ddd015c33dcdf29401fff846f0e0661db9237d12
```

-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.8 MB (580775247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9af743bb788f312b2095946e326d599c6f82dfdf8a213ebe3708f71ffdc3b69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 03:35:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 22 Jul 2017 03:35:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 03:35:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 22 Jul 2017 03:35:22 GMT
WORKDIR /usr/local/tomcat
# Sat, 22 Jul 2017 03:35:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 22 Jul 2017 03:35:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 22 Jul 2017 03:35:22 GMT
ENV OPENSSL_VERSION=1.1.0f-3
# Sat, 22 Jul 2017 03:35:24 GMT
RUN set -ex; 	if ! grep -q stretch /etc/apt/sources.list; then 		{ 			echo 'deb http://deb.debian.org/debian stretch main'; 		} > /etc/apt/sources.list.d/stretch.list; 		{ 			echo 'Package: *'; 			echo 'Pin: release n=stretch'; 			echo 'Pin-Priority: -10'; 			echo; 			echo 'Package: openssl libssl*'; 			echo "Pin: version $OPENSSL_VERSION"; 			echo 'Pin-Priority: 990'; 		} > /etc/apt/preferences.d/stretch-openssl; 	fi
# Sat, 22 Jul 2017 03:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Jul 2017 03:39:07 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 22 Jul 2017 03:39:13 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Jul 2017 03:42:45 GMT
ENV TOMCAT_MAJOR=8
# Sat, 22 Jul 2017 03:43:41 GMT
ENV TOMCAT_VERSION=8.5.16
# Sat, 22 Jul 2017 03:43:42 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz
# Sat, 22 Jul 2017 03:43:42 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz.asc
# Sat, 22 Jul 2017 03:44:32 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Sat, 22 Jul 2017 03:44:33 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 22 Jul 2017 03:44:34 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 03:44:34 GMT
CMD ["catalina.sh" "run"]
# Sat, 22 Jul 2017 04:11:29 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 22 Jul 2017 04:12:30 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 22 Jul 2017 04:12:30 GMT
ENV XWIKI_VERSION=8.4.5
# Sat, 22 Jul 2017 04:12:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.5
# Sat, 22 Jul 2017 04:12:31 GMT
ENV XWIKI_DOWNLOAD_SHA256=52ed122c44984748a729a784c94cb70ccf0d2fa34c2340d0fd45c75deb3b0bc9
# Sat, 22 Jul 2017 04:18:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 22 Jul 2017 04:18:46 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 22 Jul 2017 04:18:47 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Sat, 22 Jul 2017 04:18:47 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 22 Jul 2017 04:18:48 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 22 Jul 2017 04:18:48 GMT
COPY file:dbba4d2dc9c5d1bb58dab54cc229e0578040ec14c9ca1aa5cf8a159159126f7b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 22 Jul 2017 04:18:49 GMT
VOLUME [/usr/local/xwiki]
# Sat, 22 Jul 2017 04:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Jul 2017 04:18:49 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32df99f189065023a53e1697bcbeffb6ac364eba57059a4223a43812b73d56c`  
		Last Modified: Sat, 22 Jul 2017 03:46:32 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bed7ec0372fa4107356a8ae2e8cfe6e78cf2daeef6a8a01ed5edb3f0d6e15b`  
		Last Modified: Sat, 22 Jul 2017 03:46:32 GMT  
		Size: 225.7 KB (225657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f581996e948e73056c0ab87deae9bb8c5dd1091e76616026705ddfb682b19c9a`  
		Last Modified: Sat, 22 Jul 2017 03:47:51 GMT  
		Size: 112.3 KB (112267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2945a789aa82f5e6b0448de07bc2a8f83ecb88d10a9e3449af4d3a3efc5531`  
		Last Modified: Sat, 22 Jul 2017 03:49:30 GMT  
		Size: 10.1 MB (10080905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305a5d5ca13e343e0f47fc5682ca8364523646aedab770ab7807a603c7fab188`  
		Last Modified: Sat, 22 Jul 2017 03:49:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5803ea2c0b6c7c5ee84a1a96096885d04f7e738c1f8c8eff266607207886d0e6`  
		Last Modified: Sat, 22 Jul 2017 04:41:17 GMT  
		Size: 216.4 MB (216384901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e567c61b6c3b49081239a94a537ef7bae93c7358427052b2804e56a142faf79d`  
		Last Modified: Sat, 22 Jul 2017 04:40:53 GMT  
		Size: 237.0 MB (237028789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1448fb4f89b36e60fffc9f0eedce5d323c7a6b0a7abb29152615275fed64ffe9`  
		Last Modified: Sat, 22 Jul 2017 04:40:36 GMT  
		Size: 952.1 KB (952070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35bc0090d83f5ab905de7ea240ae63d24b923554576127343f13ffbc45d0ba8`  
		Last Modified: Sat, 22 Jul 2017 04:40:35 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da261acdb1fa04b26a3a02b520c2d8035fa40818f01e32edc576d5bba61e16d`  
		Last Modified: Sat, 22 Jul 2017 04:40:35 GMT  
		Size: 2.3 KB (2273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317173d73fe3081070d7cae787f1ff2207ec06253c2225f664582309f19e0ae3`  
		Last Modified: Sat, 22 Jul 2017 04:40:35 GMT  
		Size: 3.7 KB (3698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278c8a153c23db6a7ccc24faff9d3d73cf3baef63198e6efa012ab2a4aaaeb1d`  
		Last Modified: Sat, 22 Jul 2017 04:40:36 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
