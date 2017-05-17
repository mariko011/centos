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
