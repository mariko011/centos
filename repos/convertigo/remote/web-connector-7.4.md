## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:207e31dcc56202eab1afbe0cb48f399d3732df05ce99130ab30f26852bc275dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

```console
$ docker pull convertigo@sha256:8cd21a21d39b259d00f283bf4faa3a7517b2d511a8ee31b57ce46a355e83b785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254735962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d2b295ba81d03bd92eca8eae7dd37135670a692db5339de387a96ce519995`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:17:34 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 13 Sep 2017 12:17:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Sep 2017 12:17:35 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Sep 2017 12:17:35 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Sep 2017 12:18:38 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:18:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 13 Sep 2017 12:19:15 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:19:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 13 Sep 2017 12:19:21 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 13 Sep 2017 12:19:22 GMT
ENV TOMCAT_MAJOR=7
# Wed, 13 Sep 2017 12:19:22 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 13 Sep 2017 12:19:22 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 13 Sep 2017 12:19:22 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 13 Sep 2017 12:19:32 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 13 Sep 2017 12:19:32 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 13 Sep 2017 12:19:32 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 13 Sep 2017 12:19:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Wed, 13 Sep 2017 12:19:33 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 13 Sep 2017 12:19:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 13 Sep 2017 12:19:55 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 13 Sep 2017 12:19:55 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 13 Sep 2017 12:19:55 GMT
WORKDIR /workspace
# Wed, 13 Sep 2017 12:19:56 GMT
VOLUME [/workspace]
# Wed, 13 Sep 2017 12:19:56 GMT
EXPOSE 28080/tcp
# Wed, 13 Sep 2017 12:19:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 12:19:56 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7341122604889c4b80b002d769c12ce31347eb7cb39daf95250b27eff1ae2b`  
		Last Modified: Wed, 13 Sep 2017 12:21:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433f41fd5f5eaccb2659febdc0a95d2d316a63dc2cc3d0ac5769f42707cd627f`  
		Last Modified: Wed, 13 Sep 2017 12:21:21 GMT  
		Size: 47.5 MB (47512931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d1f1d18f669ab16ee4846300b61d43ee5a1276ac6590b451aa19986a80a26b`  
		Last Modified: Wed, 13 Sep 2017 12:21:19 GMT  
		Size: 50.5 MB (50494137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9069d0645a825f006c2fbec4d59ac00d99dde67318a43c0b747e569f6a4f9e8d`  
		Last Modified: Wed, 13 Sep 2017 12:21:09 GMT  
		Size: 826.1 KB (826138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725260e45b4ca0bffc47a542c528eb32f9444bb038337a70edfab686c69b11a6`  
		Last Modified: Wed, 13 Sep 2017 12:21:07 GMT  
		Size: 4.5 KB (4513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78480f6fd0a8dd7cfcadba2c12318e49ac977258697b41cd0b7a61aa00eaf62`  
		Last Modified: Wed, 13 Sep 2017 12:21:08 GMT  
		Size: 7.5 MB (7473747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f86407f7a070482026d201bd0e51129653e006c38e91f6f66e0afea1626ae8c`  
		Last Modified: Wed, 13 Sep 2017 12:21:18 GMT  
		Size: 95.8 MB (95827388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a8866d562442210ad0e47bbc1812864f280ce424898cdd8bf493a9be0581d`  
		Last Modified: Wed, 13 Sep 2017 12:21:07 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccd6f8cb3c6331e2a97e4d0cf1d112a2843aba8e870cdaa0dac84fdc1203ab6`  
		Last Modified: Wed, 13 Sep 2017 12:21:07 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
