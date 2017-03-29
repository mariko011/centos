## `convertigo:latest`

```console
$ docker pull convertigo@sha256:9e20b23c63b3938268cfdf2b5b28454042b874873fe9ff70c88ad7d8b8dea46d
```

-	Platforms:
	-	linux; amd64

### `convertigo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214412229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea71b770714d77ddd066cbdf4ad6a925c117d1275c081ffc851d59ad78e3f18`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

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
# Wed, 29 Mar 2017 20:13:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 29 Mar 2017 20:13:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 29 Mar 2017 20:13:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 29 Mar 2017 20:13:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 29 Mar 2017 20:13:18 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 29 Mar 2017 20:13:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 29 Mar 2017 20:13:25 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 29 Mar 2017 20:13:26 GMT
ENV TOMCAT_MAJOR=7
# Wed, 29 Mar 2017 20:13:26 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 29 Mar 2017 20:13:26 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 29 Mar 2017 20:13:27 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 29 Mar 2017 20:13:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 29 Mar 2017 20:13:36 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Wed, 29 Mar 2017 20:13:36 GMT
ENV CONVERTIGO_REVISION=43105
# Wed, 29 Mar 2017 20:13:36 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux64.war
# Wed, 29 Mar 2017 20:13:37 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 29 Mar 2017 20:13:51 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 29 Mar 2017 20:13:51 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Wed, 29 Mar 2017 20:13:52 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Wed, 29 Mar 2017 20:13:52 GMT
WORKDIR /workspace
# Wed, 29 Mar 2017 20:13:53 GMT
VOLUME [/workspace]
# Wed, 29 Mar 2017 20:13:53 GMT
EXPOSE 28080/tcp
# Wed, 29 Mar 2017 20:13:54 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 20:13:54 GMT
CMD ["convertigo"]
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
	-	`sha256:f26295dc3b4705ecfe4ae84145274e444befc86777dfe45a949768f602ce2e63`  
		Last Modified: Wed, 29 Mar 2017 20:16:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c16fe0846fed9d82aab07a3c72fc85f46f2c9417ad0bb3bc50ee22103a53054`  
		Last Modified: Wed, 29 Mar 2017 20:16:29 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7aeeea15042794028749d42303829ba63a3ea41327592db3c5233b0348d8b8`  
		Last Modified: Wed, 29 Mar 2017 20:16:29 GMT  
		Size: 815.1 KB (815058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fe31ef1904fce29983161f94b3193a68803a6c1139b857dc8fedb88a3becc4`  
		Last Modified: Wed, 29 Mar 2017 20:16:26 GMT  
		Size: 4.5 KB (4507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0757a0a559259e84d3031f1f25f7cd3a64fe3ed563593330838a26dd49461`  
		Last Modified: Wed, 29 Mar 2017 20:16:28 GMT  
		Size: 7.5 MB (7474138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dcab572c9bc480feb6aec8b11a6d577158893aba94c02ba8b4c93eea992400`  
		Last Modified: Wed, 29 Mar 2017 20:16:36 GMT  
		Size: 81.6 MB (81625208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26fd248d3b591ecc9bd470288d26906eca1a92ba7f3af0ab23bd019bd263e1b`  
		Last Modified: Wed, 29 Mar 2017 20:16:27 GMT  
		Size: 449.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c96417410eccd15ffd2e9bed52f6464b499cbb5910459cfe8e242d777c4d6b`  
		Last Modified: Wed, 29 Mar 2017 20:16:27 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
