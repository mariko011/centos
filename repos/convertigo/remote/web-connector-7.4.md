## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:5002bd88d8beb5fbc4f2fa18b699f6d13beed30d2e97ea88604a8b852cc9d730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

```console
$ docker pull convertigo@sha256:85b62f1c4be350021e86dcb5ee700eb3f21f867379f41ee5f98bec84c46e4ab0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254736564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e316a386a95d58f980a2b4107c6ba8a94cf4f71a46b5264502d5bff730a4bfd`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:20:22 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 04 Nov 2017 18:20:22 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 04 Nov 2017 18:20:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 04 Nov 2017 18:20:23 GMT
WORKDIR /usr/local/tomcat
# Sat, 04 Nov 2017 18:21:09 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:21:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Sat, 04 Nov 2017 18:21:36 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:21:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sat, 04 Nov 2017 18:21:45 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 04 Nov 2017 18:21:45 GMT
ENV TOMCAT_MAJOR=7
# Sat, 04 Nov 2017 18:21:45 GMT
ENV TOMCAT_VERSION=7.0.72
# Sat, 04 Nov 2017 18:21:45 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Sat, 04 Nov 2017 18:21:45 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 04 Nov 2017 18:21:57 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 04 Nov 2017 18:21:57 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Sat, 04 Nov 2017 18:21:57 GMT
ENV CONVERTIGO_REVISION=43404
# Sat, 04 Nov 2017 18:21:57 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Sat, 04 Nov 2017 18:21:58 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 04 Nov 2017 18:22:14 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Sat, 04 Nov 2017 18:22:14 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 04 Nov 2017 18:22:14 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Sat, 04 Nov 2017 18:22:15 GMT
WORKDIR /workspace
# Sat, 04 Nov 2017 18:22:15 GMT
VOLUME [/workspace]
# Sat, 04 Nov 2017 18:22:15 GMT
EXPOSE 28080/tcp
# Sat, 04 Nov 2017 18:22:15 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:22:16 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8037546ab3496d8234455c6026d9d5f86b89b8073d83efe29f1e586eec46d`  
		Last Modified: Sat, 04 Nov 2017 18:23:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1e344e7c49595e85f0e1b2272963b86717615d164a9b0a96b8b9c870f9fcb3`  
		Last Modified: Sat, 04 Nov 2017 18:23:11 GMT  
		Size: 47.5 MB (47513870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ab74fa05d49096e0e9ec42d84f5abe44fce43db305b07f3473a00c73418739`  
		Last Modified: Sat, 04 Nov 2017 18:23:11 GMT  
		Size: 50.5 MB (50494236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2348422c9baaca150aeb8238d0a1397adcc1f149ae5f2a92157156c9693dcb33`  
		Last Modified: Sat, 04 Nov 2017 18:23:02 GMT  
		Size: 826.1 KB (826131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fd7ef6e4c7ec51951bf9f37abfff4474d50a80dba0c1b1abb148cdf867069e`  
		Last Modified: Sat, 04 Nov 2017 18:23:01 GMT  
		Size: 4.5 KB (4513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70147fdfb693ffa20e661ca9272e9f73b987459ce4ffe9f89c760689d9044f39`  
		Last Modified: Sat, 04 Nov 2017 18:23:00 GMT  
		Size: 7.5 MB (7473747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cd8097b390d9b34feb79dcebd9532cf0ec28917af0d28c4728602de0cf566e`  
		Last Modified: Sat, 04 Nov 2017 18:23:08 GMT  
		Size: 95.8 MB (95827383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7f4730c3271e00e2535f389e77aa7719fdd1d93c133e6584d0d88073bab5c1`  
		Last Modified: Sat, 04 Nov 2017 18:22:59 GMT  
		Size: 461.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35231e649a106706fb013ed8731461ca36a43ccf42dd68f6a7996610eab3753`  
		Last Modified: Sat, 04 Nov 2017 18:22:59 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
