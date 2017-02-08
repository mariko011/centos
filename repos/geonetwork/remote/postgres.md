## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:18e5866b77adf4665c675a4e56063a06d3d80561a74302d83039c80100b52b44
```

-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.3 MB (341319066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f60a15092be43cf75a33b51bdbc65e8e3106c9d652025d44a96d3900e91dac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Tue, 07 Feb 2017 23:33:49 GMT
ENV GN_FILE=geonetwork.war
# Tue, 07 Feb 2017 23:33:50 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 07 Feb 2017 23:33:50 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Tue, 07 Feb 2017 23:33:51 GMT
ENV GN_VERSION=3.2.0
# Tue, 07 Feb 2017 23:33:51 GMT
ENV GN_DOWNLOAD_MD5=87a84ffb3fbbd662d595c08e1a7fdff2
# Tue, 07 Feb 2017 23:33:52 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 07 Feb 2017 23:36:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 07 Feb 2017 23:36:44 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 07 Feb 2017 23:36:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 07 Feb 2017 23:36:46 GMT
CMD ["catalina.sh" "run"]
# Tue, 07 Feb 2017 23:37:03 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 07 Feb 2017 23:37:04 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 07 Feb 2017 23:37:05 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 07 Feb 2017 23:37:06 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 07 Feb 2017 23:37:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 07 Feb 2017 23:37:07 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:06aca5af323c39a7bc03bcb13cc657fced90cedde16917e8b951eebe6ec75443`  
		Last Modified: Tue, 07 Feb 2017 23:38:55 GMT  
		Size: 193.5 MB (193547764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebeaf89e57fb14bd1f4f903bb62e413904832607ecaa6300f0b86a8ea7d4977f`  
		Last Modified: Tue, 07 Feb 2017 23:38:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6fd7134e7babd4a131f3c5151ab60b79d5fc8634f587847faa38eb92ce47c6b`  
		Last Modified: Tue, 07 Feb 2017 23:39:57 GMT  
		Size: 10.5 MB (10465030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254c126f38cf4058f86f40ad14345eb3bfa530277bf7675d0f4486c459b1b277`  
		Last Modified: Tue, 07 Feb 2017 23:39:53 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c921bc78beecf97b6eac1fd1957ceb0bc4f2fccfc19826c3a5b258185881a4f4`  
		Last Modified: Tue, 07 Feb 2017 23:39:52 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ca2c56332f56787f4da7f5ca70257f1b4f40862ca7b14383a1519401fae11c`  
		Last Modified: Tue, 07 Feb 2017 23:39:52 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
