## `tomcat:jre9-slim`

```console
$ docker pull tomcat@sha256:f2c977690adc27e8c0f4e1b6aef0b25f9bd416ab5ae44c78afea54a8357043e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:jre9-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:76fecb5f2faf16868b36e2c619fc4f14df331f9464699f03352d74154ef5d4f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122431204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caaadda3b62c3ec14d52e42926e192095f3a1406371fa17e126886446eb63aff`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:25 GMT
ADD file:f105fa3aa445df54e1e78b4ba607c2724f1dc586b1e060c482c798966d97c635 in / 
# Tue, 12 Dec 2017 01:43:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:39:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:39:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 05:39:24 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 05:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 23:00:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 18 Jan 2018 23:00:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jan 2018 23:00:33 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 18 Jan 2018 23:00:33 GMT
WORKDIR /usr/local/tomcat
# Thu, 18 Jan 2018 23:00:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 23:00:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 23:00:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 18 Jan 2018 23:00:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 18 Jan 2018 23:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 23:00:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 23:00:58 GMT
ENV TOMCAT_MAJOR=8
# Thu, 18 Jan 2018 23:00:58 GMT
ENV TOMCAT_VERSION=8.5.24
# Thu, 18 Jan 2018 23:00:58 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Thu, 18 Jan 2018 23:00:58 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Thu, 18 Jan 2018 23:01:08 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Thu, 18 Jan 2018 23:02:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 18 Jan 2018 23:09:26 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Jan 2018 23:09:27 GMT
EXPOSE 8080/tcp
# Thu, 18 Jan 2018 23:09:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7dadf3208611439968d74844a1c976f4664c77dbe43c9e5b63a825002a5cd02f`  
		Last Modified: Tue, 12 Dec 2017 01:51:57 GMT  
		Size: 25.2 MB (25200134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349fcab9b82f6a693cf54bf9000507a4d7f9156532a75463f72361a998cf0067`  
		Last Modified: Tue, 12 Dec 2017 05:56:46 GMT  
		Size: 461.4 KB (461353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cfeb98889dc8545e46793cf726769e7e76fbc4a3b799356ce858fd304f57e0`  
		Last Modified: Tue, 12 Dec 2017 05:56:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc023e51619bb1a2cb5a9da4e75b69475730a29ad5471a1b5ebcd24cd5dd111`  
		Last Modified: Tue, 12 Dec 2017 05:56:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d348932d1971dfd979c07af4f9af620766c4760b407f6c6ab256e91aaff876`  
		Last Modified: Tue, 12 Dec 2017 05:58:59 GMT  
		Size: 76.6 MB (76557181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3d8b7ae82e26c3f57143f8e56990af9ca347a4f9a3bbcc8c54911ecdaf4692`  
		Last Modified: Thu, 18 Jan 2018 23:55:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84385e81864b8043ec933159eff86209e4c48c3c0caadeb623b615f307679210`  
		Last Modified: Thu, 18 Jan 2018 23:55:36 GMT  
		Size: 410.3 KB (410319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f9952a22c39c689c2611612671c5f84d6cbaca34cb9cbdf27d9b5c10b17d6`  
		Last Modified: Thu, 18 Jan 2018 23:55:41 GMT  
		Size: 19.8 MB (19801526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535a1f72f181e91baab68389563f0a45720315005e1dd3648a4e82f6f7634fef`  
		Last Modified: Thu, 18 Jan 2018 23:55:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:dc2d009909baa57b0a6c6d4f3da28ab36b722d9b8ff901c2d9c80f39e75b53e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105164424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7433491307947b712616aac837069f9374076c3717c7165871bd807d2651668f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 21:00:22 GMT
ADD file:e86fb04d129478e6ac96176adfffb3e711115a347024d1cb531bc50ac60a1ffc in / 
# Tue, 12 Dec 2017 21:00:22 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:42:19 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:42:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:42:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:42:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:42:22 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 23:42:22 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 23:46:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 23:06:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 18 Jan 2018 23:06:23 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jan 2018 23:06:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 18 Jan 2018 23:06:24 GMT
WORKDIR /usr/local/tomcat
# Thu, 18 Jan 2018 23:06:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 23:06:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 23:06:25 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 18 Jan 2018 23:06:25 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 18 Jan 2018 23:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 23:06:36 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 23:06:36 GMT
ENV TOMCAT_MAJOR=8
# Thu, 18 Jan 2018 23:06:37 GMT
ENV TOMCAT_VERSION=8.5.24
# Thu, 18 Jan 2018 23:06:37 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Thu, 18 Jan 2018 23:06:37 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Thu, 18 Jan 2018 23:06:37 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Thu, 18 Jan 2018 23:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 18 Jan 2018 23:09:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Jan 2018 23:09:27 GMT
EXPOSE 8080/tcp
# Thu, 18 Jan 2018 23:09:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bef6bbd4145ba81761456f5a5681c95e374890b48a13d53619c2ba83e7f89764`  
		Last Modified: Tue, 12 Dec 2017 21:10:34 GMT  
		Size: 23.7 MB (23652669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e38575884f240f90306b3d9d111c7bf53ae381ce029c25a1d5b6f295c545e`  
		Last Modified: Tue, 12 Dec 2017 23:59:36 GMT  
		Size: 454.9 KB (454853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4284332539dd44a79212191ea64ebe0d2cb5bf781f2c4437f5835bf8b593f7bb`  
		Last Modified: Tue, 12 Dec 2017 23:59:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb100768b0dfe9874210b7e28d3980a530d9c5c044e767441708e420ae543d`  
		Last Modified: Tue, 12 Dec 2017 23:59:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eeb6eb5ae8d4aa784f5f1e01f97a9df9086ece21546573c0cb7532eaaf12ec`  
		Last Modified: Wed, 13 Dec 2017 00:03:04 GMT  
		Size: 61.9 MB (61893548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe3d223853f951689f21d35437646214a6052ad2e5fde3c3110d7b72c199fc6`  
		Last Modified: Thu, 18 Jan 2018 23:21:39 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c8c789d0da774401d5f4b79e4a7ad6cfa7980305a6c6b2d6ccd4ed4170a069`  
		Last Modified: Thu, 18 Jan 2018 23:21:39 GMT  
		Size: 394.2 KB (394219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ab456d1137d0cb43882b75b08f2a593de3ba714d75efb10c0e464e70874ab9`  
		Last Modified: Thu, 18 Jan 2018 23:21:44 GMT  
		Size: 18.8 MB (18768445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b5f2d6ffbf5d9f6c6aa4953f5e8d918ae51018f60d771fa32ea9decc696ba2`  
		Last Modified: Thu, 18 Jan 2018 23:21:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:0f523186b304f2625c39aaf4ad3f5cf0d59515dbba2b47fd6a9962abcea92c45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104647472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d3fbb3eabb9f0e7421a06d7fe381b3c6bf4d32dada3be866561ef441cf2bd2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 13:31:16 GMT
ADD file:eb741b8fe83ce46b665a7bdd2a99528846dd7547771a65092065e4bc8e15c367 in / 
# Tue, 12 Dec 2017 13:31:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:22:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:23:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:23:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:23:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:23:01 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 15:23:02 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 15:25:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 03:14:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 03:14:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 03:14:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 03:14:36 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 03:14:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 03:14:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 03:14:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 03:14:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 03:14:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 03:14:47 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 03:14:47 GMT
ENV TOMCAT_MAJOR=8
# Fri, 19 Jan 2018 03:14:47 GMT
ENV TOMCAT_VERSION=8.5.24
# Fri, 19 Jan 2018 03:14:47 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Fri, 19 Jan 2018 03:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Fri, 19 Jan 2018 03:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Fri, 19 Jan 2018 03:16:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 19 Jan 2018 03:16:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 19 Jan 2018 03:16:43 GMT
EXPOSE 8080/tcp
# Fri, 19 Jan 2018 03:16:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3ecac93191c5706244513457d41a41cc88efb0c7ceee2302e73b23e9ec168fae`  
		Last Modified: Tue, 12 Dec 2017 13:43:05 GMT  
		Size: 21.7 MB (21702273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1188f6ec9d3ba1e73240169767a8a14ae35c21abcbe369aa29a1dc5733d0bd65`  
		Last Modified: Tue, 12 Dec 2017 15:39:04 GMT  
		Size: 437.4 KB (437418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e222d4df56b1dfadbeae0c8a73150ad61a78cf9b79d2f05c48607d4fcf4b700`  
		Last Modified: Tue, 12 Dec 2017 15:39:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba81eab57f4a25c75df020e88b9f15f9c1d73867a5718dc10e3420fde2fbd44`  
		Last Modified: Tue, 12 Dec 2017 15:39:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820a53b9db1036b3989d6f73ac10c24a797bc9ef4a0f428715ef8ab8ba4ee16e`  
		Last Modified: Tue, 12 Dec 2017 15:42:55 GMT  
		Size: 63.8 MB (63831851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52218db6df1bad11ec0a50e3d19d5e0534cf2e9afe3b113e0516605b242a66f5`  
		Last Modified: Fri, 19 Jan 2018 03:26:17 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169faf6796187f9d952e68e2f2559f337ff7b14236d78385fd1980c19c2f1c2`  
		Last Modified: Fri, 19 Jan 2018 03:26:17 GMT  
		Size: 383.9 KB (383862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0690d7a3bd513b4dad7fd7293e9c7262b149af94261ea4f254d749c404cde39d`  
		Last Modified: Fri, 19 Jan 2018 03:26:21 GMT  
		Size: 18.3 MB (18291378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b56222c866de6049d8b7b3428dc78fb4a4e92444014a2b6b4c16d4a32e0a87b`  
		Last Modified: Fri, 19 Jan 2018 03:26:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:4dd99e64806c40d0b2ec6c951f05d241ce49c43af53a0f5bbd82f72f0b8c5c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108053661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039dc1bb6199788677e1b60f5400a472d76e22aee107907b955df4a9e03acb0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 18:30:47 GMT
ADD file:527347414411e4bab808cd9d1c7924a32554d04164b13a0b598ec648d11f27ee in / 
# Tue, 12 Dec 2017 18:30:48 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 02:23:09 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 02:23:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 02:23:13 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 02:23:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Dec 2017 02:23:14 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 13 Dec 2017 02:23:15 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 13 Dec 2017 02:26:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 02:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 02:55:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 02:55:10 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 02:55:11 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 02:55:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:55:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:55:13 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 02:55:15 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 02:55:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:55:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:55:35 GMT
ENV TOMCAT_MAJOR=8
# Fri, 19 Jan 2018 02:55:35 GMT
ENV TOMCAT_VERSION=8.5.24
# Fri, 19 Jan 2018 02:55:36 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Fri, 19 Jan 2018 02:55:37 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Fri, 19 Jan 2018 02:55:37 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Fri, 19 Jan 2018 03:11:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 19 Jan 2018 03:11:34 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 19 Jan 2018 03:11:34 GMT
EXPOSE 8080/tcp
# Fri, 19 Jan 2018 03:11:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8ad0e67dadf87e1ab909d780cc670757702de1c5410e3aa7278328a71490ec00`  
		Last Modified: Tue, 12 Dec 2017 18:44:50 GMT  
		Size: 23.0 MB (23010638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7bde884095f3c349aadf8979a279fe0b1eb3342e0d13e5ddaf8218283448d5`  
		Last Modified: Wed, 13 Dec 2017 02:31:52 GMT  
		Size: 446.2 KB (446189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e8590235b7d5b22c055e4416b4442303e78a4cbb6cd68bf393528f67eac0d6`  
		Last Modified: Wed, 13 Dec 2017 02:31:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11129cf7463b144b115a986e5228dd79857db56d05ce26d9f109f6a33fe0624d`  
		Last Modified: Wed, 13 Dec 2017 02:31:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45719dd50662d50217c7fbfe3a21b6e1da9ff121b4b1d70df9d73c99de97031`  
		Last Modified: Wed, 13 Dec 2017 02:35:08 GMT  
		Size: 65.4 MB (65362305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ec255dc30bc7a03a7575a125732db4295b42e068f42c994431b989ca04e98c`  
		Last Modified: Fri, 19 Jan 2018 03:59:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d55b339ea452f2f76ab5d6108f5e365c67cb6b12c764dbe5b3c3d81acbe01`  
		Last Modified: Fri, 19 Jan 2018 03:59:31 GMT  
		Size: 395.2 KB (395188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a96f5cb3f546966535b5e398c233d41b64dcd6dbae3daf62b475111ee78803b`  
		Last Modified: Fri, 19 Jan 2018 03:59:36 GMT  
		Size: 18.8 MB (18838682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cda2724d8251762414ab31309558eba476d66a799b52e3ec9ed6b7364516e5`  
		Last Modified: Fri, 19 Jan 2018 03:59:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; 386

```console
$ docker pull tomcat@sha256:f72a529c21f8c5e4187846b07860c7b1548e1eb9a3cabfad539936c8529d846f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127767610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb194c1801000d0461eade75c7f77d52219d042a0e2bf4f7643f53f2d4f609c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 14:26:01 GMT
ADD file:46df013c9ec06d520ea24c10ca0e5e7bc83e313168969cdcad677d7b418cbbc6 in / 
# Tue, 12 Dec 2017 14:26:02 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 19:03:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 19:03:14 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 19:03:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 19:03:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 19:03:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 19:03:17 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 19:03:17 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 19:16:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 22:52:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 22:52:50 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 22:52:52 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 22:52:52 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 22:52:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 22:52:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 22:52:53 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 22:52:54 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 22:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 22:53:06 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 22:53:06 GMT
ENV TOMCAT_MAJOR=8
# Fri, 19 Jan 2018 22:53:07 GMT
ENV TOMCAT_VERSION=8.5.24
# Fri, 19 Jan 2018 22:53:07 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Fri, 19 Jan 2018 22:53:07 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Fri, 19 Jan 2018 22:53:07 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Fri, 19 Jan 2018 22:58:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 19 Jan 2018 22:58:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 19 Jan 2018 22:58:09 GMT
EXPOSE 8080/tcp
# Fri, 19 Jan 2018 22:58:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4603b89d42471f1f0576b6d8d62275a71b7467d816510c7a1dab54290955d810`  
		Last Modified: Tue, 12 Dec 2017 14:58:48 GMT  
		Size: 26.0 MB (25952276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce07f9131e6e05a4febbb0e2c586bbab194d1a1ef6bb05c91c89b3a50a062a2f`  
		Last Modified: Tue, 12 Dec 2017 19:52:07 GMT  
		Size: 469.9 KB (469866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2062de3a33e6e5672f832cac4f2e22ccbf49cc41519ce0c8597aa1b539962e`  
		Last Modified: Tue, 12 Dec 2017 19:52:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1ba7e97a0299e5afcb94ccec52e8436240724ea3352d0dc0e690ea6bd82bd`  
		Last Modified: Tue, 12 Dec 2017 19:52:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed310b120b6394fda1132eab0a30620ba875cf2026453ade96b104d4b3ec89c9`  
		Last Modified: Tue, 12 Dec 2017 20:22:06 GMT  
		Size: 81.5 MB (81498153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254a7cd0dec7798cb47b4dabd075b125ef9d911c7c3ae8716f3d73d7fe7a8583`  
		Last Modified: Sat, 20 Jan 2018 00:08:45 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a281f4edb2abb2c0a17a62e29a5b8e409e8fe76cd0ac67d2e4e04d4daaf5997d`  
		Last Modified: Sat, 20 Jan 2018 00:08:45 GMT  
		Size: 419.7 KB (419747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf872ef86dd7a0691d995cb8b9fa37fb0e5929c540d43bf8d1c5029048c87f8`  
		Last Modified: Sat, 20 Jan 2018 00:08:51 GMT  
		Size: 19.4 MB (19426872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d190816695cd0dcd22bcd22f6f1eaa8707e623a76a6e8c9c5ac06300c0762e9e`  
		Last Modified: Sat, 20 Jan 2018 00:08:44 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:3b3e8b26d536ce2a0772ef1e3088f074b59bba3163f2cb43af07eb264721fecb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114325451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643ea626838cb484a79d3a214a1ec1aa248e8e864e90f02c45474e22eb9bb364`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:28 GMT
ADD file:4189fa121fbbf89150ccba6e8e9ccea8dd3a28956bf0fb4eedba7d0782093698 in / 
# Tue, 12 Dec 2017 01:34:31 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:12:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:12:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 04:12:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 04:12:17 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 04:12:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 04:12:20 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 04:12:22 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 04:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 21:53:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 18 Jan 2018 21:54:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jan 2018 21:54:13 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 18 Jan 2018 21:54:15 GMT
WORKDIR /usr/local/tomcat
# Thu, 18 Jan 2018 21:54:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:54:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:54:19 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 18 Jan 2018 21:54:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 18 Jan 2018 21:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 21:54:45 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:54:47 GMT
ENV TOMCAT_MAJOR=8
# Thu, 18 Jan 2018 21:54:50 GMT
ENV TOMCAT_VERSION=8.5.24
# Thu, 18 Jan 2018 21:54:53 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Thu, 18 Jan 2018 21:54:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Thu, 18 Jan 2018 21:55:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Thu, 18 Jan 2018 22:12:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 18 Jan 2018 22:12:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Jan 2018 22:12:46 GMT
EXPOSE 8080/tcp
# Thu, 18 Jan 2018 22:12:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:79df2038e61de125ab6fdf8c9740f0bebfe5e218d0f5e30fed081e642f3bbec3`  
		Last Modified: Tue, 12 Dec 2017 01:40:53 GMT  
		Size: 26.3 MB (26299327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a56ab726ba5ad6e60fd2c02b48caee36c366aef3954faa232f8184da5ba30c3`  
		Last Modified: Tue, 12 Dec 2017 04:23:31 GMT  
		Size: 456.1 KB (456093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b667478d7e08c70a2df46fd62a0090973c581b974c5423d4dfe4e741742e6af`  
		Last Modified: Tue, 12 Dec 2017 04:23:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717ebdf3a7027503eefde0fbc15c087ce76400c17653494033edb24aef6f044`  
		Last Modified: Tue, 12 Dec 2017 04:23:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e795979de7ec3dbc942f5be4adfd0e261d30a61645fbb7c4f6e2a5893b2eeaf`  
		Last Modified: Tue, 12 Dec 2017 04:24:55 GMT  
		Size: 66.5 MB (66544540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac599175359211b37480bc3db2255784cbe4c0c836416a49e16bc95b878b8538`  
		Last Modified: Thu, 18 Jan 2018 23:02:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ce674eb68b7cd12f7419cb52646eacf02e1274b1088dd3e1c6e41386a7aff4`  
		Last Modified: Thu, 18 Jan 2018 23:02:01 GMT  
		Size: 407.2 KB (407224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ae9930092dae43769f9b6d5bb14aa76a6e6ac5176d345ca147fc7769a3bb24`  
		Last Modified: Thu, 18 Jan 2018 23:02:06 GMT  
		Size: 20.6 MB (20617572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f127cc38b78a85d9ddc4c0082375e7dad686f0ef22f07e4df3d3b6941f41e4b8`  
		Last Modified: Thu, 18 Jan 2018 23:02:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:5c9c34197e0697f74956005e4c37782b5bf6bf542f890dba671dfa127af80a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111502099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9af0b723e7b0cf9669a26f7cc93e508e9fdd85f32476617eadf17257d03e99`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 06:24:27 GMT
ADD file:0a58c40f8b6c45097900cd455c27c43741b8163089ed305813a5a498a285c4b0 in / 
# Tue, 12 Dec 2017 06:24:30 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:43:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:43:12 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 07:43:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 07:43:13 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 07:43:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 07:43:22 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 07:43:23 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 07:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 13:37:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 13:37:57 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 13:37:58 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 13:37:58 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 13:37:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 13:37:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 13:37:58 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 13:37:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 13:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 13:38:06 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 13:38:06 GMT
ENV TOMCAT_MAJOR=8
# Fri, 19 Jan 2018 13:38:06 GMT
ENV TOMCAT_VERSION=8.5.24
# Fri, 19 Jan 2018 13:38:06 GMT
ENV TOMCAT_SHA1=9e26ba61c5665aafc849073edeb769be555283cd
# Fri, 19 Jan 2018 13:38:06 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz
# Fri, 19 Jan 2018 13:38:06 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz.asc
# Fri, 19 Jan 2018 13:40:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 19 Jan 2018 13:40:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 19 Jan 2018 13:40:16 GMT
EXPOSE 8080/tcp
# Fri, 19 Jan 2018 13:40:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5463f9ff445c97f73432cbd02d68920b0642535942c01ba9b44040d3c2ec690f`  
		Last Modified: Tue, 12 Dec 2017 06:29:47 GMT  
		Size: 24.9 MB (24921548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3a1db0bace5d82511cb62ff22bbc2f882f87854bdfc298e43084ff4432b126`  
		Last Modified: Tue, 12 Dec 2017 07:51:07 GMT  
		Size: 472.2 KB (472234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e227f569c9d6f99284a92fda989fd95a28573723f8d51a884982eb0a3a863d0c`  
		Last Modified: Tue, 12 Dec 2017 07:51:06 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c657c9a57df517777314814aa374042ae08f57f8a93e79d9a3789cb2dc1ed2`  
		Last Modified: Tue, 12 Dec 2017 07:51:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d8fe8f128692880dab14cd517d2eda3b5fd95890887618833801417b043030`  
		Last Modified: Tue, 12 Dec 2017 07:53:05 GMT  
		Size: 66.4 MB (66400784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad5c130e711929116a11ad17664940af462e618a81f8e8d3917f255689e0df9`  
		Last Modified: Fri, 19 Jan 2018 13:48:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7928a28c26b85ee5bb1515b555b3969acde23d4d659db7e27ee8979ff7e30dd`  
		Last Modified: Fri, 19 Jan 2018 13:48:56 GMT  
		Size: 413.0 KB (412994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5467765617f535772125b2010fb59a6ddfc732130d142bcfac5b1be953fdaf`  
		Last Modified: Fri, 19 Jan 2018 13:48:58 GMT  
		Size: 19.3 MB (19293881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c7bdaa262dfcdf4e86f4e9317404c5765dae2810830741af1c0049c6cfa470`  
		Last Modified: Fri, 19 Jan 2018 13:48:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
