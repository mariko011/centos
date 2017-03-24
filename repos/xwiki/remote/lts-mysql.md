## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:a5cd9a455823cbb6c47e4c041f29036f85be27cc8cad5ebdff6a28d9807be7b6
```

-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **561.8 MB (561760650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07f44f0f13bcf14fcce631af4f4b7f35c8c630382912629adaea471925ef663`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 17:42:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 22 Mar 2017 17:42:40 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:42:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 22 Mar 2017 17:42:42 GMT
WORKDIR /usr/local/tomcat
# Wed, 22 Mar 2017 17:42:42 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 22 Mar 2017 17:42:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 22 Mar 2017 17:42:44 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 22 Mar 2017 17:42:45 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 22 Mar 2017 17:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:45:31 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 22 Mar 2017 17:45:36 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 22 Mar 2017 17:47:17 GMT
ENV TOMCAT_MAJOR=8
# Wed, 22 Mar 2017 17:47:18 GMT
ENV TOMCAT_VERSION=8.0.42
# Wed, 22 Mar 2017 17:47:19 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.42/bin/apache-tomcat-8.0.42.tar.gz
# Wed, 22 Mar 2017 17:47:19 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.42/bin/apache-tomcat-8.0.42.tar.gz.asc
# Wed, 22 Mar 2017 17:48:12 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 22 Mar 2017 17:48:14 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 22 Mar 2017 17:48:15 GMT
EXPOSE 8080/tcp
# Wed, 22 Mar 2017 17:48:16 GMT
CMD ["catalina.sh" "run"]
# Wed, 22 Mar 2017 17:56:17 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 22 Mar 2017 17:57:22 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:57:23 GMT
ENV XWIKI_VERSION=8.4.4
# Wed, 22 Mar 2017 17:57:23 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.4
# Wed, 22 Mar 2017 17:57:23 GMT
ENV XWIKI_DOWNLOAD_SHA256=b414edb4527e3d8b27c40a8c3f2f09423980de7963207b7dc89da71d14e7fb23
# Wed, 22 Mar 2017 17:58:00 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 22 Mar 2017 17:58:01 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 22 Mar 2017 17:58:02 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Wed, 22 Mar 2017 17:58:02 GMT
COPY file:1c0736cd925afea380b7be25664cbe8411b510ba081ed0ffd36fc65197d467f4 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Wed, 22 Mar 2017 17:58:03 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Wed, 22 Mar 2017 17:58:04 GMT
COPY file:0a778607de3de8275de7f66f61dca74e9227d948039095861ca8dd786383d199 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 22 Mar 2017 17:58:04 GMT
VOLUME [/usr/local/xwiki]
# Wed, 22 Mar 2017 17:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 17:58:05 GMT
CMD ["xwiki"]
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
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c72b1a17dfb99a70f348467611c34279769fb3a1024f82ae46628037121824`  
		Last Modified: Fri, 24 Mar 2017 01:03:08 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2ccd12a13686aca14f9df3c096f43507e18d686e7a55b2f5e6fa0ded87a9c`  
		Last Modified: Fri, 24 Mar 2017 01:03:08 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e54b0c11e818400027956e81e10a1b1bf9b7db34564895193fd02990e3272e6`  
		Last Modified: Fri, 24 Mar 2017 01:03:15 GMT  
		Size: 11.3 MB (11309021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37da287a896195c07c9588545d962d0dbdf8dd28afc25e5dd2d35b5f327fe732`  
		Last Modified: Fri, 24 Mar 2017 01:06:24 GMT  
		Size: 113.2 KB (113187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98131da2a03f3800b4141e56bc25ad701991456e9e5b47a2fdda4aa5ca2dd7f3`  
		Last Modified: Fri, 24 Mar 2017 01:10:16 GMT  
		Size: 9.9 MB (9902926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430e1c9709ddeb48f2b1f2bf7516043eb9ebac48901d635da4ed83c51a992d2f`  
		Last Modified: Fri, 24 Mar 2017 01:10:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9166b40d856169a0fb030e341a7e80a34bfdf4eb6ee1520ed5612cd529fa9388`  
		Last Modified: Fri, 24 Mar 2017 01:35:40 GMT  
		Size: 178.3 MB (178303162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82fd0a1f173cd1be223a2535b54bed9423dea158ec5acadd5140bd4b4cef7ee`  
		Last Modified: Fri, 24 Mar 2017 01:35:11 GMT  
		Size: 236.7 MB (236700895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886c5073f1ade8debb3dc3f64835d3bc18ff384569a778b5d0c09883a8a27452`  
		Last Modified: Fri, 24 Mar 2017 01:34:39 GMT  
		Size: 931.5 KB (931500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495596bce76cb62fabfe0780985740cf159c4104724c8763002acb97f1dc47f`  
		Last Modified: Fri, 24 Mar 2017 01:34:39 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93546e9b3747b70ad5a35ef212d4ee1bff56e863a2402648ed76a5e549c37418`  
		Last Modified: Fri, 24 Mar 2017 01:34:39 GMT  
		Size: 2.3 KB (2278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2924b8d11935afd7adba639e74f6beb3fb460994a2124779aaaca64f29a4ec4e`  
		Last Modified: Fri, 24 Mar 2017 01:34:39 GMT  
		Size: 3.7 KB (3688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce106ccef1ed30b29c2c29a378e64c695d83330151b282ee1a1446fc8e1e225`  
		Last Modified: Fri, 24 Mar 2017 01:34:39 GMT  
		Size: 1.5 KB (1532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
