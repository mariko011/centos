## `convertigo:web-connector-7.4.6`

```console
$ docker pull convertigo@sha256:f3e0eb430cc1cf27efdb31effac171709096b0e83999bcfa3ed1c2a69ab1a23a
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254465066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a386a272cea55a4d66ede207f860a2e85123e4a6fa7a754b08057bf15c3631b0`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:00:01 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 08 Sep 2017 00:00:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 08 Sep 2017 00:00:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 08 Sep 2017 00:00:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 08 Sep 2017 00:01:02 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:01:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 08 Sep 2017 00:01:41 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:01:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 08 Sep 2017 00:01:56 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 08 Sep 2017 00:01:57 GMT
ENV TOMCAT_MAJOR=7
# Fri, 08 Sep 2017 00:01:57 GMT
ENV TOMCAT_VERSION=7.0.72
# Fri, 08 Sep 2017 00:01:57 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Fri, 08 Sep 2017 00:01:57 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 08 Sep 2017 00:02:06 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 08 Sep 2017 00:02:06 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Fri, 08 Sep 2017 00:02:07 GMT
ENV CONVERTIGO_REVISION=43404
# Fri, 08 Sep 2017 00:02:07 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Fri, 08 Sep 2017 00:02:07 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 08 Sep 2017 00:02:23 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Fri, 08 Sep 2017 00:02:24 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Fri, 08 Sep 2017 00:02:25 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Fri, 08 Sep 2017 00:02:25 GMT
WORKDIR /workspace
# Fri, 08 Sep 2017 00:02:25 GMT
VOLUME [/workspace]
# Fri, 08 Sep 2017 00:02:26 GMT
EXPOSE 28080/tcp
# Fri, 08 Sep 2017 00:02:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 00:02:27 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c183b5f4fc0300c7f1b8f363030fc9f5b716c77b87ec9ab6dea9b8cc788b7`  
		Last Modified: Mon, 11 Sep 2017 03:03:57 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ac09876e807da4434ae26eae6bea78899d04f3298bdc6bf73dec35d3e1747f`  
		Last Modified: Mon, 11 Sep 2017 03:04:11 GMT  
		Size: 47.5 MB (47512601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d870a0eb08a0e483a52bf56fd2dabcb603a3f20d1f95a36e174d376b3886179`  
		Last Modified: Mon, 11 Sep 2017 03:04:09 GMT  
		Size: 50.2 MB (50225743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8b068c0dcb6f7139e4ff7840fb14564f6cc55853be366d7c9366e9f2cb2187`  
		Last Modified: Mon, 11 Sep 2017 03:03:55 GMT  
		Size: 826.1 KB (826124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f096db240d8ee98897870810504bea04e20bf037a56f40433733688c9e144f`  
		Last Modified: Mon, 11 Sep 2017 03:03:55 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cc5615c16ba1d06e06f84963a62387cbc1db68947810870535c8fff95bd42d`  
		Last Modified: Mon, 11 Sep 2017 03:03:55 GMT  
		Size: 7.5 MB (7473746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31689d70eb393315072946796ab556763459c5616c835154142e0b9f8010ce8f`  
		Last Modified: Mon, 11 Sep 2017 03:04:09 GMT  
		Size: 95.8 MB (95825284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc1e1472db6b70fe58b8059a9463f08c4ca4945571a30e184edfe938a78ea22`  
		Last Modified: Mon, 11 Sep 2017 03:03:54 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1dfe34191dcd646e96a201b3bf996d9ac845a0ae9c3958319008eeaf5c671e`  
		Last Modified: Mon, 11 Sep 2017 03:03:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
