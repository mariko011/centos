## `tomcat:8-jre8`

```console
$ docker pull tomcat@sha256:6b4dae9603173219a5c37471475afe724aac7f06554144ee74d97c67593e0436
```

-	Platforms:
	-	linux; amd64

### `tomcat:8-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137255519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ff744ffbdaf1e631a3af12ba7347e2a545d41da64145027c2b33c4dbf3f798`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:51:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 31 Aug 2016 21:51:52 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:51:53 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 31 Aug 2016 21:51:53 GMT
WORKDIR /usr/local/tomcat
# Wed, 31 Aug 2016 21:51:53 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 31 Aug 2016 21:51:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 31 Aug 2016 21:51:54 GMT
ENV OPENSSL_VERSION=1.0.2h-1
# Wed, 31 Aug 2016 21:51:55 GMT
RUN { 		echo 'deb http://httpredir.debian.org/debian unstable main'; 	} > /etc/apt/sources.list.d/unstable.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release a=unstable'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/unstable-openssl
# Wed, 31 Aug 2016 21:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 21:52:11 GMT
RUN set -ex 	&& for key in 		05AB33110949707C93A279E3D3EFE6B686867BA6 		07E48665A34DCAFAE522E5E6266191C37C037D42 		47309207D818FFD8DCD3F83F1931D684307A10A5 		541FBE7D8F78B25E055DDEE13C370389288584E7 		61B832AC2F1C5A90F0F9B00A1C506407564C17A3 		713DA88BE50911535FE716F5208B0AB1D63011C7 		79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 		9BA44C2621385CB966EBA586F72C284D731FABEE 		A27677289986DB50844682F8ACB77FC2E86E29AC 		A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 		DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 		F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE 		F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 22:05:13 GMT
ENV TOMCAT_MAJOR=8
# Wed, 07 Sep 2016 19:19:10 GMT
ENV TOMCAT_VERSION=8.0.37
# Wed, 07 Sep 2016 19:19:10 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.0.37/bin/apache-tomcat-8.0.37.tar.gz
# Wed, 07 Sep 2016 19:20:01 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_TGZ_URL.asc" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 07 Sep 2016 19:20:08 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 07 Sep 2016 19:20:08 GMT
EXPOSE 8080/tcp
# Wed, 07 Sep 2016 19:20:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96290882cd1beb96c9eb04ab971b73f64fc205e018d9a47a418b6f991a27d506`  
		Last Modified: Wed, 31 Aug 2016 21:53:16 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85852deeb719d0b4472eec507fbfbc7c953d882e9663a164be14fe57fa0f22be`  
		Last Modified: Wed, 31 Aug 2016 21:53:13 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff68ba87c7a17fe4816b7c930d643b273335a811812501521a7f93f99cc18f48`  
		Last Modified: Wed, 31 Aug 2016 21:53:15 GMT  
		Size: 3.0 MB (2959644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584acdc953da96204db9ffcb937e4fae0479fcd4c7d52092f8897a9d5ba746b9`  
		Last Modified: Wed, 31 Aug 2016 21:53:13 GMT  
		Size: 107.2 KB (107244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3a387a5bb7cd214b15c131cec7ff85c79830c4495bbcfeabf3b81f25ed431f`  
		Last Modified: Wed, 07 Sep 2016 19:28:42 GMT  
		Size: 10.0 MB (10039514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cf4f910c2921cfc4f6daa08f905ab47a8607686d11242deab4ecb38d08c338`  
		Last Modified: Wed, 07 Sep 2016 19:28:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
