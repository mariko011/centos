## `xwiki:8-mysql-tomcat`

```console
$ docker pull xwiki@sha256:72fdea03cc8ca203f2f5ccbb4bdf2598eeb7938e03cc25dc11f482bb3d9acf3e
```

-	Platforms:
	-	linux; amd64

### `xwiki:8-mysql-tomcat` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.2 MB (553229070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b102180e1a0c7a2475eea35681910aecfd0724b2ddfc52cb7b9f6f64886b022a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 23:05:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Feb 2017 23:05:58 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 23:06:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 07 Feb 2017 23:06:00 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Feb 2017 23:06:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Feb 2017 23:06:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Feb 2017 23:06:02 GMT
ENV OPENSSL_VERSION=1.1.0c-2
# Tue, 07 Feb 2017 23:06:03 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Tue, 07 Feb 2017 23:06:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Feb 2017 23:07:24 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 07 Feb 2017 23:07:29 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 07 Feb 2017 23:08:37 GMT
ENV TOMCAT_MAJOR=8
# Tue, 07 Feb 2017 23:08:38 GMT
ENV TOMCAT_VERSION=8.0.41
# Tue, 07 Feb 2017 23:08:38 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.41/bin/apache-tomcat-8.0.41.tar.gz
# Tue, 07 Feb 2017 23:08:39 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.41/bin/apache-tomcat-8.0.41.tar.gz.asc
# Tue, 07 Feb 2017 23:09:32 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 07 Feb 2017 23:09:34 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 07 Feb 2017 23:09:35 GMT
EXPOSE 8080/tcp
# Tue, 07 Feb 2017 23:09:35 GMT
CMD ["catalina.sh" "run"]
# Wed, 08 Feb 2017 23:25:15 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 08 Feb 2017 23:26:24 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 08 Feb 2017 23:26:27 GMT
ENV XWIKI_VERSION=8.4.4
# Wed, 08 Feb 2017 23:26:28 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/enterprise/xwiki-enterprise-web/8.4.4
# Wed, 08 Feb 2017 23:26:28 GMT
ENV XWIKI_DOWNLOAD_SHA256=b414edb4527e3d8b27c40a8c3f2f09423980de7963207b7dc89da71d14e7fb23
# Wed, 08 Feb 2017 23:27:21 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-enterprise-web-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 08 Feb 2017 23:27:34 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 08 Feb 2017 23:27:35 GMT
COPY file:a5eb2bffb2fd9cdddac5e77040b6f670c8dd62aa8af8ea010e4a65f2291ae6ab in /usr/local/tomcat/bin/ 
# Wed, 08 Feb 2017 23:27:49 GMT
ENV MYSQL_DATABASE=xwiki
# Wed, 08 Feb 2017 23:27:50 GMT
COPY file:b385ee30d74380f5bcbecbdc0e60a58391eb82991fa291a7f56dce887fe4da91 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Wed, 08 Feb 2017 23:27:51 GMT
RUN sed -i 's/<id>org.xwiki.enterprise:xwiki-enterprise-web/<id>org.xwiki.enterprise:xwiki-enterprise-docker/'     /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Wed, 08 Feb 2017 23:28:07 GMT
COPY file:491b67380ae5346da1fa44f685b70f8c763951973682799a4a119bd7ee204aba in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 Feb 2017 23:28:07 GMT
VOLUME [/var/lib/xwiki]
# Wed, 08 Feb 2017 23:28:07 GMT
ENV MYSQL_USER=xwiki MYSQL_PASSWORD=xwiki
# Wed, 08 Feb 2017 23:28:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Feb 2017 23:28:22 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b2d7b8e68baf293521152aa8dffb02b9e42548ee1bb7c31a1a1a0c076556f4`  
		Last Modified: Tue, 07 Feb 2017 23:13:41 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3778ca36cc6700563d77ffec6bb3f421776e8bd469e13b80695ddfaef38285a5`  
		Last Modified: Tue, 07 Feb 2017 23:13:42 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee2d9017e35cab1cfcc721f2d2da4cb7b3eb1f1c48ed740d16591504011f87`  
		Last Modified: Tue, 07 Feb 2017 23:13:42 GMT  
		Size: 3.1 MB (3075743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9a8031fccb362bc93fc069ac52ff66851d63332599a5dfbe069653cf0b45ff`  
		Last Modified: Tue, 07 Feb 2017 23:17:48 GMT  
		Size: 112.7 KB (112658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305c6585ffd432d6d9ec5a181646a6ca6618143e404376f9090567131c857e76`  
		Last Modified: Tue, 07 Feb 2017 23:23:51 GMT  
		Size: 9.8 MB (9843271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202032d4e9fc242408978740073084cb6a1d54ab6994e972898c6dfcc33cb3e4`  
		Last Modified: Tue, 07 Feb 2017 23:23:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7c36f61bf5918f8fdf80f3488c5b2cbbc81fc4ef064f77bf2df9d4bfbffa8e`  
		Last Modified: Wed, 08 Feb 2017 23:29:45 GMT  
		Size: 178.3 MB (178285597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8f064963759e254d55fbfdb2b5a1b413296ef10429efbca24652e1c4b1dd33`  
		Last Modified: Wed, 08 Feb 2017 23:29:19 GMT  
		Size: 236.7 MB (236700870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c03cd4c5d1541eca3d758f9427d280e749d30af3eaf9fb86576fe52bcaca4c`  
		Last Modified: Wed, 08 Feb 2017 23:28:42 GMT  
		Size: 931.5 KB (931506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31096e7bc55ad254a112ff139a5d73e4fa524829816754ccd9eea853143057b`  
		Last Modified: Wed, 08 Feb 2017 23:28:41 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2c0c26bb6b9a8e93a4e97f9daf106fed1064e48b55cea9156ec2d3a7ac3191`  
		Last Modified: Wed, 08 Feb 2017 23:28:41 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5256fca2970fb994ab15c8510bc0b9f1c98c5a0435287464515e8e00e2ee0bd2`  
		Last Modified: Wed, 08 Feb 2017 23:28:41 GMT  
		Size: 3.7 KB (3688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ba53bc8acb479194d31f91ce54a322905b7ab676856d7f988b89fc38b58170`  
		Last Modified: Wed, 08 Feb 2017 23:28:41 GMT  
		Size: 1.5 KB (1513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
