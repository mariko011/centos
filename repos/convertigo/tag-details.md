<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `convertigo`

-	[`convertigo:7.4.6`](#convertigo746)
-	[`convertigo:7.4`](#convertigo74)
-	[`convertigo:latest`](#convertigolatest)
-	[`convertigo:web-connector-7.4.6`](#convertigoweb-connector-746)
-	[`convertigo:web-connector-7.4`](#convertigoweb-connector-74)
-	[`convertigo:web-connector`](#convertigoweb-connector)

## `convertigo:7.4.6`

```console
$ docker pull convertigo@sha256:ee24f62f43a3abbfda1248e3363eb2f6356c4bf0f1664786211bff07ec84e0ec
```

-	Platforms:
	-	linux; amd64

### `convertigo:7.4.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216829396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a307fd3acae65e1c0922bdb63b5d266bbb6f8540dd852dee22e0b9e2534eb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 12 Jun 2017 19:50:16 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:50:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:50:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:50:19 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:50:26 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 19:50:33 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 12 Jun 2017 19:50:35 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 12 Jun 2017 19:50:36 GMT
ENV TOMCAT_MAJOR=7
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 12 Jun 2017 19:50:38 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 12 Jun 2017 19:50:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:16:29 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:16:30 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:16:31 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux64.war
# Wed, 14 Jun 2017 18:16:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:17:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Jun 2017 18:17:46 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:17:47 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Wed, 14 Jun 2017 18:18:12 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:18:13 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:18:14 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:18:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:18:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c2ad0c2762b990a0fee4a370645b2f9b1324d30e722cba281fdbf5d9d917e`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c30be2876cf8337a2f8068ddadec6f3c99ecf3da43c9bb5015c8abdc44c5c6`  
		Last Modified: Tue, 13 Jun 2017 21:47:33 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f95bc5d179bb6f7aa12b49d33d1216731dfe47c0c03230405ad4e3571c0178`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 826.1 KB (826135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c60d50e964cb5d2d183df5ee4614b99a94e223eeb76ee97cc63005760c27a55`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 4.5 KB (4544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a061555a5164ce58fc34010b8c840296c1f61da096905cf1708c787fd0fdb9`  
		Last Modified: Tue, 13 Jun 2017 21:47:32 GMT  
		Size: 7.5 MB (7473745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e3a448d277b0c2a1647e6a45106257764c2078114d2c6bff492e21f811c4e`  
		Last Modified: Wed, 14 Jun 2017 18:34:33 GMT  
		Size: 81.8 MB (81759606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d527f2d0669ae92de2af88fb2b9926c733ab0e258ca53357e43d01ffb37f24eb`  
		Last Modified: Wed, 14 Jun 2017 18:34:21 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80433b3381b886452f2c07b559a80bad46c581e40c0ad39b2a07e3c3c477e6ac`  
		Last Modified: Wed, 14 Jun 2017 18:34:22 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4`

```console
$ docker pull convertigo@sha256:ee24f62f43a3abbfda1248e3363eb2f6356c4bf0f1664786211bff07ec84e0ec
```

-	Platforms:
	-	linux; amd64

### `convertigo:7.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216829396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a307fd3acae65e1c0922bdb63b5d266bbb6f8540dd852dee22e0b9e2534eb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 12 Jun 2017 19:50:16 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:50:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:50:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:50:19 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:50:26 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 19:50:33 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 12 Jun 2017 19:50:35 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 12 Jun 2017 19:50:36 GMT
ENV TOMCAT_MAJOR=7
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 12 Jun 2017 19:50:38 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 12 Jun 2017 19:50:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:16:29 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:16:30 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:16:31 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux64.war
# Wed, 14 Jun 2017 18:16:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:17:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Jun 2017 18:17:46 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:17:47 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Wed, 14 Jun 2017 18:18:12 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:18:13 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:18:14 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:18:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:18:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c2ad0c2762b990a0fee4a370645b2f9b1324d30e722cba281fdbf5d9d917e`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c30be2876cf8337a2f8068ddadec6f3c99ecf3da43c9bb5015c8abdc44c5c6`  
		Last Modified: Tue, 13 Jun 2017 21:47:33 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f95bc5d179bb6f7aa12b49d33d1216731dfe47c0c03230405ad4e3571c0178`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 826.1 KB (826135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c60d50e964cb5d2d183df5ee4614b99a94e223eeb76ee97cc63005760c27a55`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 4.5 KB (4544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a061555a5164ce58fc34010b8c840296c1f61da096905cf1708c787fd0fdb9`  
		Last Modified: Tue, 13 Jun 2017 21:47:32 GMT  
		Size: 7.5 MB (7473745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e3a448d277b0c2a1647e6a45106257764c2078114d2c6bff492e21f811c4e`  
		Last Modified: Wed, 14 Jun 2017 18:34:33 GMT  
		Size: 81.8 MB (81759606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d527f2d0669ae92de2af88fb2b9926c733ab0e258ca53357e43d01ffb37f24eb`  
		Last Modified: Wed, 14 Jun 2017 18:34:21 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80433b3381b886452f2c07b559a80bad46c581e40c0ad39b2a07e3c3c477e6ac`  
		Last Modified: Wed, 14 Jun 2017 18:34:22 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:ee24f62f43a3abbfda1248e3363eb2f6356c4bf0f1664786211bff07ec84e0ec
```

-	Platforms:
	-	linux; amd64

### `convertigo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216829396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a307fd3acae65e1c0922bdb63b5d266bbb6f8540dd852dee22e0b9e2534eb6`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 12 Jun 2017 19:50:16 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:50:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:50:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:50:19 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:50:26 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 19:50:33 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 12 Jun 2017 19:50:35 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 12 Jun 2017 19:50:36 GMT
ENV TOMCAT_MAJOR=7
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 12 Jun 2017 19:50:37 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 12 Jun 2017 19:50:38 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 12 Jun 2017 19:50:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:16:29 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:16:30 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:16:31 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux64.war
# Wed, 14 Jun 2017 18:16:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:17:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Jun 2017 18:17:46 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:17:47 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Wed, 14 Jun 2017 18:18:12 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:18:13 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:18:14 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:18:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:18:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c2ad0c2762b990a0fee4a370645b2f9b1324d30e722cba281fdbf5d9d917e`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c30be2876cf8337a2f8068ddadec6f3c99ecf3da43c9bb5015c8abdc44c5c6`  
		Last Modified: Tue, 13 Jun 2017 21:47:33 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f95bc5d179bb6f7aa12b49d33d1216731dfe47c0c03230405ad4e3571c0178`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 826.1 KB (826135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c60d50e964cb5d2d183df5ee4614b99a94e223eeb76ee97cc63005760c27a55`  
		Last Modified: Tue, 13 Jun 2017 21:47:31 GMT  
		Size: 4.5 KB (4544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a061555a5164ce58fc34010b8c840296c1f61da096905cf1708c787fd0fdb9`  
		Last Modified: Tue, 13 Jun 2017 21:47:32 GMT  
		Size: 7.5 MB (7473745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e3a448d277b0c2a1647e6a45106257764c2078114d2c6bff492e21f811c4e`  
		Last Modified: Wed, 14 Jun 2017 18:34:33 GMT  
		Size: 81.8 MB (81759606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d527f2d0669ae92de2af88fb2b9926c733ab0e258ca53357e43d01ffb37f24eb`  
		Last Modified: Wed, 14 Jun 2017 18:34:21 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80433b3381b886452f2c07b559a80bad46c581e40c0ad39b2a07e3c3c477e6ac`  
		Last Modified: Wed, 14 Jun 2017 18:34:22 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:web-connector-7.4.6`

```console
$ docker pull convertigo@sha256:dcc3166f0eccbf09d4e2541acb2505c91b58d0a7134cc4275c41fd102e8da73e
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254417440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22d5d2e0a64d78c03653707ee10fd6009917f518310013c32c77f9bf5850e83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 19:51:38 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:51:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:51:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:51:41 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:52:29 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:21:24 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 14 Jun 2017 18:22:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:23:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:24:10 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Jun 2017 18:24:32 GMT
ENV TOMCAT_MAJOR=7
# Wed, 14 Jun 2017 18:25:19 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 14 Jun 2017 18:26:05 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 14 Jun 2017 18:26:29 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 14 Jun 2017 18:27:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:27:16 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:27:41 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:28:04 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Wed, 14 Jun 2017 18:28:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:29:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:30:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:30:24 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 14 Jun 2017 18:30:48 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:31:11 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:31:58 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:32:21 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:33:08 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975de6c820e706a86963dec1178413aa8bbac9d39029632fafab3b85db06ea51`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547cbaa992af81e6371f580ff033b90dfd7e031be986428ecc76309e9d36312`  
		Last Modified: Wed, 14 Jun 2017 18:37:18 GMT  
		Size: 47.5 MB (47492174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b5f6d851795bb9ccc0ee21902900e6e0a150f95ae252467d87eba8022177e3`  
		Last Modified: Wed, 14 Jun 2017 18:37:17 GMT  
		Size: 50.2 MB (50225791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82924b3c59aa52eb945663579e0455cdf49c21a6079b92ede3cd9ac1c491a073`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 826.1 KB (826124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af7b56db332fafe664bd6057b57ed6605b4991b03ca2cd67b1563e53cdd6e29`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2149c404acacf455e5531040e8d7ab237d553f5fa9b15197ebeca192311ad198`  
		Last Modified: Wed, 14 Jun 2017 18:37:04 GMT  
		Size: 7.5 MB (7473770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbedf83b9e9947fe28d09a5f1f7cb7e468dd1a83f3ca34cd0eb824c2c8395391`  
		Last Modified: Wed, 14 Jun 2017 18:37:15 GMT  
		Size: 95.8 MB (95825285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00086c425d73a831de6d317a33bfc07b258745723618a0efa885aaf44b149d`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 449.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db53ee97e8c1294f62f2683a4d1fa709a247e325a0a7798164a52a77228c277`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:dcc3166f0eccbf09d4e2541acb2505c91b58d0a7134cc4275c41fd102e8da73e
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254417440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22d5d2e0a64d78c03653707ee10fd6009917f518310013c32c77f9bf5850e83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 19:51:38 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:51:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:51:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:51:41 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:52:29 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:21:24 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 14 Jun 2017 18:22:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:23:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:24:10 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Jun 2017 18:24:32 GMT
ENV TOMCAT_MAJOR=7
# Wed, 14 Jun 2017 18:25:19 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 14 Jun 2017 18:26:05 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 14 Jun 2017 18:26:29 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 14 Jun 2017 18:27:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:27:16 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:27:41 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:28:04 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Wed, 14 Jun 2017 18:28:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:29:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:30:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:30:24 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 14 Jun 2017 18:30:48 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:31:11 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:31:58 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:32:21 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:33:08 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975de6c820e706a86963dec1178413aa8bbac9d39029632fafab3b85db06ea51`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547cbaa992af81e6371f580ff033b90dfd7e031be986428ecc76309e9d36312`  
		Last Modified: Wed, 14 Jun 2017 18:37:18 GMT  
		Size: 47.5 MB (47492174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b5f6d851795bb9ccc0ee21902900e6e0a150f95ae252467d87eba8022177e3`  
		Last Modified: Wed, 14 Jun 2017 18:37:17 GMT  
		Size: 50.2 MB (50225791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82924b3c59aa52eb945663579e0455cdf49c21a6079b92ede3cd9ac1c491a073`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 826.1 KB (826124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af7b56db332fafe664bd6057b57ed6605b4991b03ca2cd67b1563e53cdd6e29`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2149c404acacf455e5531040e8d7ab237d553f5fa9b15197ebeca192311ad198`  
		Last Modified: Wed, 14 Jun 2017 18:37:04 GMT  
		Size: 7.5 MB (7473770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbedf83b9e9947fe28d09a5f1f7cb7e468dd1a83f3ca34cd0eb824c2c8395391`  
		Last Modified: Wed, 14 Jun 2017 18:37:15 GMT  
		Size: 95.8 MB (95825285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00086c425d73a831de6d317a33bfc07b258745723618a0efa885aaf44b149d`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 449.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db53ee97e8c1294f62f2683a4d1fa709a247e325a0a7798164a52a77228c277`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:web-connector`

```console
$ docker pull convertigo@sha256:dcc3166f0eccbf09d4e2541acb2505c91b58d0a7134cc4275c41fd102e8da73e
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254417440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22d5d2e0a64d78c03653707ee10fd6009917f518310013c32c77f9bf5850e83`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Mon, 12 Jun 2017 19:51:38 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 12 Jun 2017 19:51:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 12 Jun 2017 19:51:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 12 Jun 2017 19:51:41 GMT
WORKDIR /usr/local/tomcat
# Mon, 12 Jun 2017 19:52:29 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:21:24 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 14 Jun 2017 18:22:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 14 Jun 2017 18:23:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:24:10 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Jun 2017 18:24:32 GMT
ENV TOMCAT_MAJOR=7
# Wed, 14 Jun 2017 18:25:19 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 14 Jun 2017 18:26:05 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 14 Jun 2017 18:26:29 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 14 Jun 2017 18:27:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Jun 2017 18:27:16 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 14 Jun 2017 18:27:41 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 14 Jun 2017 18:28:04 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Wed, 14 Jun 2017 18:28:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Jun 2017 18:29:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 14 Jun 2017 18:30:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Jun 2017 18:30:24 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 14 Jun 2017 18:30:48 GMT
WORKDIR /workspace
# Wed, 14 Jun 2017 18:31:11 GMT
VOLUME [/workspace]
# Wed, 14 Jun 2017 18:31:58 GMT
EXPOSE 28080/tcp
# Wed, 14 Jun 2017 18:32:21 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Jun 2017 18:33:08 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975de6c820e706a86963dec1178413aa8bbac9d39029632fafab3b85db06ea51`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547cbaa992af81e6371f580ff033b90dfd7e031be986428ecc76309e9d36312`  
		Last Modified: Wed, 14 Jun 2017 18:37:18 GMT  
		Size: 47.5 MB (47492174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b5f6d851795bb9ccc0ee21902900e6e0a150f95ae252467d87eba8022177e3`  
		Last Modified: Wed, 14 Jun 2017 18:37:17 GMT  
		Size: 50.2 MB (50225791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82924b3c59aa52eb945663579e0455cdf49c21a6079b92ede3cd9ac1c491a073`  
		Last Modified: Wed, 14 Jun 2017 18:37:05 GMT  
		Size: 826.1 KB (826124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af7b56db332fafe664bd6057b57ed6605b4991b03ca2cd67b1563e53cdd6e29`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2149c404acacf455e5531040e8d7ab237d553f5fa9b15197ebeca192311ad198`  
		Last Modified: Wed, 14 Jun 2017 18:37:04 GMT  
		Size: 7.5 MB (7473770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbedf83b9e9947fe28d09a5f1f7cb7e468dd1a83f3ca34cd0eb824c2c8395391`  
		Last Modified: Wed, 14 Jun 2017 18:37:15 GMT  
		Size: 95.8 MB (95825285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a00086c425d73a831de6d317a33bfc07b258745723618a0efa885aaf44b149d`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 449.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db53ee97e8c1294f62f2683a4d1fa709a247e325a0a7798164a52a77228c277`  
		Last Modified: Wed, 14 Jun 2017 18:37:02 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
