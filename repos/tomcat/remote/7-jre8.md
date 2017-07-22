## `tomcat:7-jre8`

```console
$ docker pull tomcat@sha256:ede99f939fa6c9c5e36218af04bb4deb7f84a812863d279296c8360b0efb720c
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (125959116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efd508828d19d588203e4817f65da9043391f4610966f1c2bf939affae12132`
-	Default Command: `["catalina.sh","run"]`

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
# Sat, 22 Jul 2017 03:39:13 GMT
ENV TOMCAT_MAJOR=7
# Sat, 22 Jul 2017 03:39:14 GMT
ENV TOMCAT_VERSION=7.0.79
# Sat, 22 Jul 2017 03:39:14 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.79/bin/apache-tomcat-7.0.79.tar.gz
# Sat, 22 Jul 2017 03:39:14 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.79/bin/apache-tomcat-7.0.79.tar.gz.asc
# Sat, 22 Jul 2017 03:40:57 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Sat, 22 Jul 2017 03:41:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 22 Jul 2017 03:41:06 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 03:41:06 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:07b6f7e31ec0096c1dbb99ef6ba01f3652c55f4d993d4dc0aa9ea2c653f019d2`  
		Last Modified: Sat, 22 Jul 2017 03:47:52 GMT  
		Size: 9.6 MB (9638287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e618ea64f1f092c199ae5e4cabbb7b1e019114d5dee0ee08f21a9b2fc35236da`  
		Last Modified: Sat, 22 Jul 2017 03:47:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
