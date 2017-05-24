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
$ docker pull geonetwork@sha256:b0fbf4c28052449ffd6fde289342348863f459b84730b25ab2bb059f53a37753
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303813091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7111fbe40d5285d8f841ca553a1e0289599eebb5883472a38eb1009cc1de1282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_VERSION=7u131
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 19 May 2017 23:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 22 May 2017 19:38:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 22 May 2017 19:38:54 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 May 2017 19:38:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 22 May 2017 19:38:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 22 May 2017 19:38:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 22 May 2017 19:38:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 23 May 2017 23:46:12 GMT
ENV OPENSSL_VERSION=1.1.0e-2
# Tue, 23 May 2017 23:46:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Tue, 23 May 2017 23:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 00:02:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 May 2017 00:02:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 24 May 2017 00:06:02 GMT
ENV TOMCAT_MAJOR=8
# Wed, 24 May 2017 00:06:03 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:06:04 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:06:05 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:07:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:07:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:07:20 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:07:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:03:17 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:03:17 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:03:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:03:18 GMT
ENV GN_VERSION=3.0.5
# Wed, 24 May 2017 17:03:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 24 May 2017 17:03:20 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:03:34 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:03:35 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:03:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:03:36 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e31c82e7d305c846c6c23258a146e1a75926d626ee291fe785d994861bac35`  
		Last Modified: Fri, 19 May 2017 23:23:12 GMT  
		Size: 78.7 MB (78695784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c05336c57ab31ddf1091bea68c17164f7f01accb38ee8937953c598ddb9c900`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b89e4e1ef8b909c8327d5b2afb6528f838212dc888b152f35770fc9c11612`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cf832e988f323ce9afdbc02e3e78cdb11138ee3bc5aec112f5ecfd30d4d5b5`  
		Last Modified: Wed, 24 May 2017 00:12:23 GMT  
		Size: 3.2 MB (3247644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7609818db1f22d97f0c2d92203c7f371335d4eacc54bbcb77e9f45b63ea6d066`  
		Last Modified: Wed, 24 May 2017 00:16:03 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198f460d45b7f1087b9951c9fe61b97f6b3ba6582f3498483fcc043c0c8d2099`  
		Last Modified: Wed, 24 May 2017 00:23:20 GMT  
		Size: 10.0 MB (9963526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346d7fbbe636d449b3f6181740f83fb3ee4a46fe4ce1bf95253c82ac622e8ab`  
		Last Modified: Wed, 24 May 2017 00:23:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5821cbee1cdaac668c2584406f72d13b4b05f4861d97e0145c845758aa185c2a`  
		Last Modified: Wed, 24 May 2017 17:06:35 GMT  
		Size: 139.4 MB (139366116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ddddbb224ee905b3ece45bd6f9a28d8a2f4abf5ecb1b2e35de93d117a794c8`  
		Last Modified: Wed, 24 May 2017 17:06:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:b0fbf4c28052449ffd6fde289342348863f459b84730b25ab2bb059f53a37753
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303813091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7111fbe40d5285d8f841ca553a1e0289599eebb5883472a38eb1009cc1de1282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_VERSION=7u131
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 19 May 2017 23:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 22 May 2017 19:38:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 22 May 2017 19:38:54 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 May 2017 19:38:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 22 May 2017 19:38:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 22 May 2017 19:38:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 22 May 2017 19:38:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 23 May 2017 23:46:12 GMT
ENV OPENSSL_VERSION=1.1.0e-2
# Tue, 23 May 2017 23:46:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Tue, 23 May 2017 23:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 00:02:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 May 2017 00:02:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 24 May 2017 00:06:02 GMT
ENV TOMCAT_MAJOR=8
# Wed, 24 May 2017 00:06:03 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:06:04 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:06:05 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:07:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:07:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:07:20 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:07:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:03:17 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:03:17 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:03:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:03:18 GMT
ENV GN_VERSION=3.0.5
# Wed, 24 May 2017 17:03:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 24 May 2017 17:03:20 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:03:34 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:03:35 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:03:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:03:36 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e31c82e7d305c846c6c23258a146e1a75926d626ee291fe785d994861bac35`  
		Last Modified: Fri, 19 May 2017 23:23:12 GMT  
		Size: 78.7 MB (78695784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c05336c57ab31ddf1091bea68c17164f7f01accb38ee8937953c598ddb9c900`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b89e4e1ef8b909c8327d5b2afb6528f838212dc888b152f35770fc9c11612`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cf832e988f323ce9afdbc02e3e78cdb11138ee3bc5aec112f5ecfd30d4d5b5`  
		Last Modified: Wed, 24 May 2017 00:12:23 GMT  
		Size: 3.2 MB (3247644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7609818db1f22d97f0c2d92203c7f371335d4eacc54bbcb77e9f45b63ea6d066`  
		Last Modified: Wed, 24 May 2017 00:16:03 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198f460d45b7f1087b9951c9fe61b97f6b3ba6582f3498483fcc043c0c8d2099`  
		Last Modified: Wed, 24 May 2017 00:23:20 GMT  
		Size: 10.0 MB (9963526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346d7fbbe636d449b3f6181740f83fb3ee4a46fe4ce1bf95253c82ac622e8ab`  
		Last Modified: Wed, 24 May 2017 00:23:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5821cbee1cdaac668c2584406f72d13b4b05f4861d97e0145c845758aa185c2a`  
		Last Modified: Wed, 24 May 2017 17:06:35 GMT  
		Size: 139.4 MB (139366116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ddddbb224ee905b3ece45bd6f9a28d8a2f4abf5ecb1b2e35de93d117a794c8`  
		Last Modified: Wed, 24 May 2017 17:06:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:befcdcf762e731e9a5a7dcf040f22704c3233df9ed8e12b6012ae6d4753060c5
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 MB (314491380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b50db2284fcf0ca4fc4c9150c26443c1cf8551337d4ef7dc79d4fc271bbe749`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_VERSION=7u131
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 19 May 2017 23:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 22 May 2017 19:38:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 22 May 2017 19:38:54 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 May 2017 19:38:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 22 May 2017 19:38:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 22 May 2017 19:38:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 22 May 2017 19:38:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 23 May 2017 23:46:12 GMT
ENV OPENSSL_VERSION=1.1.0e-2
# Tue, 23 May 2017 23:46:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Tue, 23 May 2017 23:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 00:02:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 May 2017 00:02:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 24 May 2017 00:06:02 GMT
ENV TOMCAT_MAJOR=8
# Wed, 24 May 2017 00:06:03 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:06:04 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:06:05 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:07:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:07:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:07:20 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:07:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:03:17 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:03:17 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:03:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:03:18 GMT
ENV GN_VERSION=3.0.5
# Wed, 24 May 2017 17:03:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 24 May 2017 17:03:20 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:03:34 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:03:35 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:03:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:03:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:17 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:04:19 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 24 May 2017 17:04:20 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 24 May 2017 17:04:21 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 24 May 2017 17:04:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:04:22 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e31c82e7d305c846c6c23258a146e1a75926d626ee291fe785d994861bac35`  
		Last Modified: Fri, 19 May 2017 23:23:12 GMT  
		Size: 78.7 MB (78695784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c05336c57ab31ddf1091bea68c17164f7f01accb38ee8937953c598ddb9c900`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b89e4e1ef8b909c8327d5b2afb6528f838212dc888b152f35770fc9c11612`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cf832e988f323ce9afdbc02e3e78cdb11138ee3bc5aec112f5ecfd30d4d5b5`  
		Last Modified: Wed, 24 May 2017 00:12:23 GMT  
		Size: 3.2 MB (3247644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7609818db1f22d97f0c2d92203c7f371335d4eacc54bbcb77e9f45b63ea6d066`  
		Last Modified: Wed, 24 May 2017 00:16:03 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198f460d45b7f1087b9951c9fe61b97f6b3ba6582f3498483fcc043c0c8d2099`  
		Last Modified: Wed, 24 May 2017 00:23:20 GMT  
		Size: 10.0 MB (9963526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346d7fbbe636d449b3f6181740f83fb3ee4a46fe4ce1bf95253c82ac622e8ab`  
		Last Modified: Wed, 24 May 2017 00:23:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5821cbee1cdaac668c2584406f72d13b4b05f4861d97e0145c845758aa185c2a`  
		Last Modified: Wed, 24 May 2017 17:06:35 GMT  
		Size: 139.4 MB (139366116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ddddbb224ee905b3ece45bd6f9a28d8a2f4abf5ecb1b2e35de93d117a794c8`  
		Last Modified: Wed, 24 May 2017 17:06:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62148e810385dc2bc5d801571562d174df5171e596eb77476293ce4f59f23bb`  
		Last Modified: Wed, 24 May 2017 17:07:32 GMT  
		Size: 10.7 MB (10676164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2a0a499bb71fbaf83f2004832df569cd6b2a32746d5878777e0815603fc17a`  
		Last Modified: Wed, 24 May 2017 17:07:31 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039fe432f14968369bb1ef5083738fb83df456d05e49986d8589a7fbd9e23b7f`  
		Last Modified: Wed, 24 May 2017 17:07:31 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3a29f2970994e8295f620238d602cc8b74db8790f2f230754363f2494c3f5`  
		Last Modified: Wed, 24 May 2017 17:07:30 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:befcdcf762e731e9a5a7dcf040f22704c3233df9ed8e12b6012ae6d4753060c5
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 MB (314491380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b50db2284fcf0ca4fc4c9150c26443c1cf8551337d4ef7dc79d4fc271bbe749`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_VERSION=7u131
# Fri, 19 May 2017 23:13:32 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 19 May 2017 23:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 22 May 2017 19:38:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 22 May 2017 19:38:54 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 May 2017 19:38:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 22 May 2017 19:38:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 22 May 2017 19:38:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 22 May 2017 19:38:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 23 May 2017 23:46:12 GMT
ENV OPENSSL_VERSION=1.1.0e-2
# Tue, 23 May 2017 23:46:14 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Tue, 23 May 2017 23:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 00:02:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 May 2017 00:02:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 24 May 2017 00:06:02 GMT
ENV TOMCAT_MAJOR=8
# Wed, 24 May 2017 00:06:03 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:06:04 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:06:05 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:07:15 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:07:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:07:20 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:07:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:03:17 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:03:17 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:03:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:03:18 GMT
ENV GN_VERSION=3.0.5
# Wed, 24 May 2017 17:03:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 24 May 2017 17:03:20 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:03:34 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:03:35 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:03:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:03:36 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:17 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:04:19 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 24 May 2017 17:04:20 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 24 May 2017 17:04:21 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 24 May 2017 17:04:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:04:22 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e31c82e7d305c846c6c23258a146e1a75926d626ee291fe785d994861bac35`  
		Last Modified: Fri, 19 May 2017 23:23:12 GMT  
		Size: 78.7 MB (78695784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c05336c57ab31ddf1091bea68c17164f7f01accb38ee8937953c598ddb9c900`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b89e4e1ef8b909c8327d5b2afb6528f838212dc888b152f35770fc9c11612`  
		Last Modified: Wed, 24 May 2017 00:12:21 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cf832e988f323ce9afdbc02e3e78cdb11138ee3bc5aec112f5ecfd30d4d5b5`  
		Last Modified: Wed, 24 May 2017 00:12:23 GMT  
		Size: 3.2 MB (3247644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7609818db1f22d97f0c2d92203c7f371335d4eacc54bbcb77e9f45b63ea6d066`  
		Last Modified: Wed, 24 May 2017 00:16:03 GMT  
		Size: 113.8 KB (113848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198f460d45b7f1087b9951c9fe61b97f6b3ba6582f3498483fcc043c0c8d2099`  
		Last Modified: Wed, 24 May 2017 00:23:20 GMT  
		Size: 10.0 MB (9963526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346d7fbbe636d449b3f6181740f83fb3ee4a46fe4ce1bf95253c82ac622e8ab`  
		Last Modified: Wed, 24 May 2017 00:23:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5821cbee1cdaac668c2584406f72d13b4b05f4861d97e0145c845758aa185c2a`  
		Last Modified: Wed, 24 May 2017 17:06:35 GMT  
		Size: 139.4 MB (139366116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ddddbb224ee905b3ece45bd6f9a28d8a2f4abf5ecb1b2e35de93d117a794c8`  
		Last Modified: Wed, 24 May 2017 17:06:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62148e810385dc2bc5d801571562d174df5171e596eb77476293ce4f59f23bb`  
		Last Modified: Wed, 24 May 2017 17:07:32 GMT  
		Size: 10.7 MB (10676164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2a0a499bb71fbaf83f2004832df569cd6b2a32746d5878777e0815603fc17a`  
		Last Modified: Wed, 24 May 2017 17:07:31 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039fe432f14968369bb1ef5083738fb83df456d05e49986d8589a7fbd9e23b7f`  
		Last Modified: Wed, 24 May 2017 17:07:31 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad3a29f2970994e8295f620238d602cc8b74db8790f2f230754363f2494c3f5`  
		Last Modified: Wed, 24 May 2017 17:07:30 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1`

```console
$ docker pull geonetwork@sha256:703e4366fba483097915bfb3b1b44b0b75c9419cbb6fbdfb8f615fcadd4c4f8d
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333981617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d13d2bb4453889ebb4bc020aca48c253b234ed1793b832df054a0297346ce78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:703e4366fba483097915bfb3b1b44b0b75c9419cbb6fbdfb8f615fcadd4c4f8d
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333981617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d13d2bb4453889ebb4bc020aca48c253b234ed1793b832df054a0297346ce78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:703e4366fba483097915bfb3b1b44b0b75c9419cbb6fbdfb8f615fcadd4c4f8d
```

-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333981617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d13d2bb4453889ebb4bc020aca48c253b234ed1793b832df054a0297346ce78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1-postgres`

```console
$ docker pull geonetwork@sha256:772406f450c9fb554bbf1c2b0f4a2d2769372d2ebebd786ec1daae485c663f1b
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344629930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b106a6199ecd46de66a6dca52ed2a8f2d7dc74edc498e1f9fc6e197c7a657e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:05:45 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:05:47 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 24 May 2017 17:05:48 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 24 May 2017 17:05:49 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 24 May 2017 17:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:51 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6346ab6c9251947d9375170da2dfaa1803f83e3c9fdca1f195274d76abd6088`  
		Last Modified: Wed, 24 May 2017 17:09:54 GMT  
		Size: 10.6 MB (10645619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6b260764a8909250e74988699d96f10671839650b9c874331657b4e6fef1f`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3ed8127f4f4fa4101478fa8267c997b52617996491393f3ed2107d2ed87983`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401609bbd6b0a4dae9667aabb992388922ac9bd988c27d9afa753db4b0c479e`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:772406f450c9fb554bbf1c2b0f4a2d2769372d2ebebd786ec1daae485c663f1b
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344629930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b106a6199ecd46de66a6dca52ed2a8f2d7dc74edc498e1f9fc6e197c7a657e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:05:45 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:05:47 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 24 May 2017 17:05:48 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 24 May 2017 17:05:49 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 24 May 2017 17:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:51 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6346ab6c9251947d9375170da2dfaa1803f83e3c9fdca1f195274d76abd6088`  
		Last Modified: Wed, 24 May 2017 17:09:54 GMT  
		Size: 10.6 MB (10645619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6b260764a8909250e74988699d96f10671839650b9c874331657b4e6fef1f`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3ed8127f4f4fa4101478fa8267c997b52617996491393f3ed2107d2ed87983`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401609bbd6b0a4dae9667aabb992388922ac9bd988c27d9afa753db4b0c479e`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:772406f450c9fb554bbf1c2b0f4a2d2769372d2ebebd786ec1daae485c663f1b
```

-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344629930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b106a6199ecd46de66a6dca52ed2a8f2d7dc74edc498e1f9fc6e197c7a657e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 24 May 2017 00:07:43 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 24 May 2017 00:07:44 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 24 May 2017 00:07:45 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 24 May 2017 00:08:41 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 24 May 2017 00:08:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 May 2017 00:08:44 GMT
EXPOSE 8080/tcp
# Wed, 24 May 2017 00:08:45 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:04:44 GMT
ENV GN_FILE=geonetwork.war
# Wed, 24 May 2017 17:04:45 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 24 May 2017 17:04:46 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 24 May 2017 17:04:46 GMT
ENV GN_VERSION=3.2.1
# Wed, 24 May 2017 17:04:47 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 24 May 2017 17:04:48 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 24 May 2017 17:05:05 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 24 May 2017 17:05:07 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 24 May 2017 17:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:08 GMT
CMD ["catalina.sh" "run"]
# Wed, 24 May 2017 17:05:45 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 24 May 2017 17:05:47 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 24 May 2017 17:05:48 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 24 May 2017 17:05:49 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 24 May 2017 17:05:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 May 2017 17:05:51 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:d9d9cab678516908da7db65b101d28033aedd3156df15512697fb5a9d3b0f9d3`  
		Last Modified: Wed, 24 May 2017 00:26:31 GMT  
		Size: 9.9 MB (9933127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ca25e826feeaa96f65f9981f9b23cf88ebb41e5c7131017abb38abf7d0c699`  
		Last Modified: Wed, 24 May 2017 00:26:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083545a11724817b7ef2f24f0248a5e68bb348e8e44feb67dc93d9b4bf9fd8d`  
		Last Modified: Wed, 24 May 2017 17:08:37 GMT  
		Size: 193.9 MB (193924696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec4527a353c1e6ec4030dcb39c826ba592f38a6be86065ecb3e182633fe7d48`  
		Last Modified: Wed, 24 May 2017 17:08:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6346ab6c9251947d9375170da2dfaa1803f83e3c9fdca1f195274d76abd6088`  
		Last Modified: Wed, 24 May 2017 17:09:54 GMT  
		Size: 10.6 MB (10645619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca6b260764a8909250e74988699d96f10671839650b9c874331657b4e6fef1f`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3ed8127f4f4fa4101478fa8267c997b52617996491393f3ed2107d2ed87983`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401609bbd6b0a4dae9667aabb992388922ac9bd988c27d9afa753db4b0c479e`  
		Last Modified: Wed, 24 May 2017 17:09:51 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
