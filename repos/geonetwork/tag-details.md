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
$ docker pull geonetwork@sha256:ddc1b43a956bf0e50c14e2d6b44b4987ba5648bf5df7d20f482fec4bfc1435ea
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.5 MB (303527253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758c78021dc4b55f3822b519932b3ea24358fa2966dd0ab953b6320a4d255ed3`
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
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 16:25:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 May 2017 16:25:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 May 2017 16:25:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 May 2017 16:25:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:22 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 10 May 2017 16:25:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 10 May 2017 16:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:28:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 May 2017 16:28:41 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 16:32:31 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:24:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:25:07 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:25:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:25:10 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:25:10 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:37:38 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:37:39 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:37:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:37:40 GMT
ENV GN_VERSION=3.0.5
# Wed, 17 May 2017 22:37:41 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 17 May 2017 22:37:42 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:38:51 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:38:53 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:38:54 GMT
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
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833c5551125cd38ce9d12e9c6f6eb4c3aa3eafa7ca455e9e2e38aca43e1c187a`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382a5b242d3c6bc54bb255619a3ae5ca9e943d5b87317920511259a0229b95b`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5894c5bc7203a494e4ba1f3cbd09cd9b7fd28e8546d460a458e5dfb5bb98e2a9`  
		Last Modified: Sat, 13 May 2017 19:09:16 GMT  
		Size: 3.2 MB (3247516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3dff53d3147e940c3358ff7a6a6c1d6bf317a20631e76f411e61f62d047442`  
		Last Modified: Sat, 13 May 2017 19:12:47 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0568c811c84c2129f6320559bd7e8a0a8ccc10f7b2f544eddbc8cf0fd54c94b2`  
		Last Modified: Wed, 17 May 2017 21:39:15 GMT  
		Size: 10.0 MB (9963318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850fef5e970bd5c1ec9e64a5c0086dc414e345535c0934e2d477403e8a20902`  
		Last Modified: Wed, 17 May 2017 21:39:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ebcb9e9d7ec6ac1dd914109bb41aa1068c2c2a32d3fdb796c9ba5f5189999c`  
		Last Modified: Wed, 17 May 2017 22:41:44 GMT  
		Size: 139.4 MB (139366150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d1b29ccd19a879115dbee347f5e194859e451160e191a9915e02c0f24678`  
		Last Modified: Wed, 17 May 2017 22:41:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:ddc1b43a956bf0e50c14e2d6b44b4987ba5648bf5df7d20f482fec4bfc1435ea
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.5 MB (303527253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758c78021dc4b55f3822b519932b3ea24358fa2966dd0ab953b6320a4d255ed3`
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
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 16:25:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 May 2017 16:25:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 May 2017 16:25:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 May 2017 16:25:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:22 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 10 May 2017 16:25:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 10 May 2017 16:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:28:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 May 2017 16:28:41 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 16:32:31 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:24:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:25:07 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:25:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:25:10 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:25:10 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:37:38 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:37:39 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:37:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:37:40 GMT
ENV GN_VERSION=3.0.5
# Wed, 17 May 2017 22:37:41 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 17 May 2017 22:37:42 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:38:51 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:38:53 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:38:54 GMT
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
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833c5551125cd38ce9d12e9c6f6eb4c3aa3eafa7ca455e9e2e38aca43e1c187a`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382a5b242d3c6bc54bb255619a3ae5ca9e943d5b87317920511259a0229b95b`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5894c5bc7203a494e4ba1f3cbd09cd9b7fd28e8546d460a458e5dfb5bb98e2a9`  
		Last Modified: Sat, 13 May 2017 19:09:16 GMT  
		Size: 3.2 MB (3247516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3dff53d3147e940c3358ff7a6a6c1d6bf317a20631e76f411e61f62d047442`  
		Last Modified: Sat, 13 May 2017 19:12:47 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0568c811c84c2129f6320559bd7e8a0a8ccc10f7b2f544eddbc8cf0fd54c94b2`  
		Last Modified: Wed, 17 May 2017 21:39:15 GMT  
		Size: 10.0 MB (9963318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850fef5e970bd5c1ec9e64a5c0086dc414e345535c0934e2d477403e8a20902`  
		Last Modified: Wed, 17 May 2017 21:39:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ebcb9e9d7ec6ac1dd914109bb41aa1068c2c2a32d3fdb796c9ba5f5189999c`  
		Last Modified: Wed, 17 May 2017 22:41:44 GMT  
		Size: 139.4 MB (139366150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d1b29ccd19a879115dbee347f5e194859e451160e191a9915e02c0f24678`  
		Last Modified: Wed, 17 May 2017 22:41:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:35f13fe3f90ddba6262c7dfd0a2095484715905ae14011292235d0beb5c7d4db
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314205298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ca9b5aa9f2978706691e295e9ae4c52976ce4fc002828ed37669b45e3f5bf0`
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
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 16:25:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 May 2017 16:25:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 May 2017 16:25:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 May 2017 16:25:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:22 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 10 May 2017 16:25:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 10 May 2017 16:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:28:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 May 2017 16:28:41 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 16:32:31 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:24:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:25:07 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:25:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:25:10 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:25:10 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:37:38 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:37:39 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:37:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:37:40 GMT
ENV GN_VERSION=3.0.5
# Wed, 17 May 2017 22:37:41 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 17 May 2017 22:37:42 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:38:51 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:38:53 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:38:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:39:37 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 22:39:38 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 17 May 2017 22:39:39 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 17 May 2017 22:39:40 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 17 May 2017 22:39:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:39:42 GMT
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
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833c5551125cd38ce9d12e9c6f6eb4c3aa3eafa7ca455e9e2e38aca43e1c187a`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382a5b242d3c6bc54bb255619a3ae5ca9e943d5b87317920511259a0229b95b`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5894c5bc7203a494e4ba1f3cbd09cd9b7fd28e8546d460a458e5dfb5bb98e2a9`  
		Last Modified: Sat, 13 May 2017 19:09:16 GMT  
		Size: 3.2 MB (3247516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3dff53d3147e940c3358ff7a6a6c1d6bf317a20631e76f411e61f62d047442`  
		Last Modified: Sat, 13 May 2017 19:12:47 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0568c811c84c2129f6320559bd7e8a0a8ccc10f7b2f544eddbc8cf0fd54c94b2`  
		Last Modified: Wed, 17 May 2017 21:39:15 GMT  
		Size: 10.0 MB (9963318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850fef5e970bd5c1ec9e64a5c0086dc414e345535c0934e2d477403e8a20902`  
		Last Modified: Wed, 17 May 2017 21:39:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ebcb9e9d7ec6ac1dd914109bb41aa1068c2c2a32d3fdb796c9ba5f5189999c`  
		Last Modified: Wed, 17 May 2017 22:41:44 GMT  
		Size: 139.4 MB (139366150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d1b29ccd19a879115dbee347f5e194859e451160e191a9915e02c0f24678`  
		Last Modified: Wed, 17 May 2017 22:41:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07459ffbcf944842cde4e0ceb494eb8de3aa28e4be1a93ecf5a9aa4a5d763e0f`  
		Last Modified: Wed, 17 May 2017 22:42:36 GMT  
		Size: 10.7 MB (10675924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344cfb3377feebc7c348d975e0b7c9e56a3a2b656ac9cd6940e9208d926c5627`  
		Last Modified: Wed, 17 May 2017 22:42:34 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc677366037c60f77a125846d4a18d3d4c9c9ba3b373f610fd12ce150dcd311`  
		Last Modified: Wed, 17 May 2017 22:42:35 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cfbe1b58607fa5a5e2145d3b0888d0a71715a15011b6447bbd978cbaa6e7a`  
		Last Modified: Wed, 17 May 2017 22:42:34 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:35f13fe3f90ddba6262c7dfd0a2095484715905ae14011292235d0beb5c7d4db
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314205298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ca9b5aa9f2978706691e295e9ae4c52976ce4fc002828ed37669b45e3f5bf0`
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
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 16:25:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 May 2017 16:25:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 May 2017 16:25:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 May 2017 16:25:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 16:25:22 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 10 May 2017 16:25:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 10 May 2017 16:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:28:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 May 2017 16:28:41 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 16:32:31 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:24:15 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:24:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:25:07 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:25:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:25:10 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:25:10 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:37:38 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:37:39 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:37:40 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:37:40 GMT
ENV GN_VERSION=3.0.5
# Wed, 17 May 2017 22:37:41 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 17 May 2017 22:37:42 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:38:51 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:38:53 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:38:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:39:37 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 22:39:38 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 17 May 2017 22:39:39 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 17 May 2017 22:39:40 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 17 May 2017 22:39:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:39:42 GMT
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
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833c5551125cd38ce9d12e9c6f6eb4c3aa3eafa7ca455e9e2e38aca43e1c187a`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382a5b242d3c6bc54bb255619a3ae5ca9e943d5b87317920511259a0229b95b`  
		Last Modified: Sat, 13 May 2017 19:09:14 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5894c5bc7203a494e4ba1f3cbd09cd9b7fd28e8546d460a458e5dfb5bb98e2a9`  
		Last Modified: Sat, 13 May 2017 19:09:16 GMT  
		Size: 3.2 MB (3247516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3dff53d3147e940c3358ff7a6a6c1d6bf317a20631e76f411e61f62d047442`  
		Last Modified: Sat, 13 May 2017 19:12:47 GMT  
		Size: 113.8 KB (113847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0568c811c84c2129f6320559bd7e8a0a8ccc10f7b2f544eddbc8cf0fd54c94b2`  
		Last Modified: Wed, 17 May 2017 21:39:15 GMT  
		Size: 10.0 MB (9963318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850fef5e970bd5c1ec9e64a5c0086dc414e345535c0934e2d477403e8a20902`  
		Last Modified: Wed, 17 May 2017 21:39:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ebcb9e9d7ec6ac1dd914109bb41aa1068c2c2a32d3fdb796c9ba5f5189999c`  
		Last Modified: Wed, 17 May 2017 22:41:44 GMT  
		Size: 139.4 MB (139366150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d1b29ccd19a879115dbee347f5e194859e451160e191a9915e02c0f24678`  
		Last Modified: Wed, 17 May 2017 22:41:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07459ffbcf944842cde4e0ceb494eb8de3aa28e4be1a93ecf5a9aa4a5d763e0f`  
		Last Modified: Wed, 17 May 2017 22:42:36 GMT  
		Size: 10.7 MB (10675924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344cfb3377feebc7c348d975e0b7c9e56a3a2b656ac9cd6940e9208d926c5627`  
		Last Modified: Wed, 17 May 2017 22:42:34 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc677366037c60f77a125846d4a18d3d4c9c9ba3b373f610fd12ce150dcd311`  
		Last Modified: Wed, 17 May 2017 22:42:35 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cfbe1b58607fa5a5e2145d3b0888d0a71715a15011b6447bbd978cbaa6e7a`  
		Last Modified: Wed, 17 May 2017 22:42:34 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1`

```console
$ docker pull geonetwork@sha256:c912abb2e9094b2c4588309cda5c111dc7ce916403cfbd5d14eb47464501e310
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342163895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33541e9e59973b0361231bef396c0315d61a1581bc2af46f9b543cb7e6b0ad31`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:c912abb2e9094b2c4588309cda5c111dc7ce916403cfbd5d14eb47464501e310
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342163895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33541e9e59973b0361231bef396c0315d61a1581bc2af46f9b543cb7e6b0ad31`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:c912abb2e9094b2c4588309cda5c111dc7ce916403cfbd5d14eb47464501e310
```

-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342163895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33541e9e59973b0361231bef396c0315d61a1581bc2af46f9b543cb7e6b0ad31`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.1-postgres`

```console
$ docker pull geonetwork@sha256:dc68e39a4228c3718789ed63cf75bba6f7ae539e710bb334bb0d68391b407524
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.1-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352817124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230d8468340278f72bd9f9ee16bb90ce128eeea8a4912328c89f5e34e13252da`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:41:02 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 22:41:04 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 17 May 2017 22:41:05 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 17 May 2017 22:41:06 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 17 May 2017 22:41:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:41:07 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16c42c2090b8133b46ab74e33a24a56e4d1bf8a29e0a39fa14c624b3c151210`  
		Last Modified: Wed, 17 May 2017 22:45:00 GMT  
		Size: 10.7 MB (10650533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6139d9b7cf8ac34ce3caa26a671871f353280b0c0f4c8173023c0e90513f73`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf32e672f9887b23e5e29ad7b28ccb048017413ffdc4426463071cd8a4c490c`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e8224ef70f7c5d976f3a5d3c7274c9453a8f4a3251e25201716022765911e`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:dc68e39a4228c3718789ed63cf75bba6f7ae539e710bb334bb0d68391b407524
```

-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352817124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230d8468340278f72bd9f9ee16bb90ce128eeea8a4912328c89f5e34e13252da`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:41:02 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 22:41:04 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 17 May 2017 22:41:05 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 17 May 2017 22:41:06 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 17 May 2017 22:41:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:41:07 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16c42c2090b8133b46ab74e33a24a56e4d1bf8a29e0a39fa14c624b3c151210`  
		Last Modified: Wed, 17 May 2017 22:45:00 GMT  
		Size: 10.7 MB (10650533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6139d9b7cf8ac34ce3caa26a671871f353280b0c0f4c8173023c0e90513f73`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf32e672f9887b23e5e29ad7b28ccb048017413ffdc4426463071cd8a4c490c`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e8224ef70f7c5d976f3a5d3c7274c9453a8f4a3251e25201716022765911e`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:dc68e39a4228c3718789ed63cf75bba6f7ae539e710bb334bb0d68391b407524
```

-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352817124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230d8468340278f72bd9f9ee16bb90ce128eeea8a4912328c89f5e34e13252da`
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
# Wed, 17 May 2017 01:09:37 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 17 May 2017 01:09:39 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 17 May 2017 01:09:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 01:11:13 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 17 May 2017 01:11:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 17 May 2017 01:12:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 17 May 2017 21:26:15 GMT
ENV TOMCAT_VERSION=8.0.44
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz
# Wed, 17 May 2017 21:26:16 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz.asc
# Wed, 17 May 2017 21:27:14 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 17 May 2017 21:27:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 17 May 2017 21:27:17 GMT
EXPOSE 8080/tcp
# Wed, 17 May 2017 21:27:18 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:40:03 GMT
ENV GN_FILE=geonetwork.war
# Wed, 17 May 2017 22:40:04 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 17 May 2017 22:40:05 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=1024m -XX:+UseConcMarkSweepGC
# Wed, 17 May 2017 22:40:06 GMT
ENV GN_VERSION=3.2.1
# Wed, 17 May 2017 22:40:07 GMT
ENV GN_DOWNLOAD_MD5=54140c3e4badc87651bd656f13f860f2
# Wed, 17 May 2017 22:40:07 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 17 May 2017 22:40:20 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 17 May 2017 22:40:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 17 May 2017 22:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:40:23 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 May 2017 22:41:02 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 May 2017 22:41:04 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 17 May 2017 22:41:05 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 17 May 2017 22:41:06 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 17 May 2017 22:41:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 22:41:07 GMT
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
	-	`sha256:ed223de3846c0f2346f8451f219eebc0cc9104b45341d3d6d1b128f1a435c9bd`  
		Last Modified: Wed, 17 May 2017 01:20:36 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff06c6b4b282a447380841fc12ab199e50b64b3b7c6a096a2142758a923e4d1`  
		Last Modified: Wed, 17 May 2017 01:20:38 GMT  
		Size: 11.4 MB (11392557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d20c16cc8be4b70849648a9c520ca371e70c72371966d99d6f63be5c56b5f5`  
		Last Modified: Wed, 17 May 2017 01:26:24 GMT  
		Size: 113.8 KB (113846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e58fd5fd0fc198997fa3ce4bee2a35b0d7760d379c2673335743a78a2e392b`  
		Last Modified: Wed, 17 May 2017 21:42:30 GMT  
		Size: 9.9 MB (9937943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a009353dd415b0acc26ab89ab75ea9d181f27f73f3b6c5608e1e2fb32931e2`  
		Last Modified: Wed, 17 May 2017 21:42:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109e06a6dbf57859043082647f9c8634e09b0c72bf73bf7b315c3e80212d0bc`  
		Last Modified: Wed, 17 May 2017 22:43:41 GMT  
		Size: 193.9 MB (193924692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a400ade97d3618f77dac76c3b380ccb689da78c7bea77a2f2281eb42a2044c`  
		Last Modified: Wed, 17 May 2017 22:43:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16c42c2090b8133b46ab74e33a24a56e4d1bf8a29e0a39fa14c624b3c151210`  
		Last Modified: Wed, 17 May 2017 22:45:00 GMT  
		Size: 10.7 MB (10650533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6139d9b7cf8ac34ce3caa26a671871f353280b0c0f4c8173023c0e90513f73`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf32e672f9887b23e5e29ad7b28ccb048017413ffdc4426463071cd8a4c490c`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116e8224ef70f7c5d976f3a5d3c7274c9453a8f4a3251e25201716022765911e`  
		Last Modified: Wed, 17 May 2017 22:44:57 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
