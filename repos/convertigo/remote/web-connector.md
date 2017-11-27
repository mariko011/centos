## `convertigo:web-connector`

```console
$ docker pull convertigo@sha256:d7c4174ef646ed272a645e8c5429e27ffd56c64f08220a0ca7c107af71f75aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector` - linux; amd64

```console
$ docker pull convertigo@sha256:de34370f4b55d0625796b9254cb196a66e9aed0a437afca41a5c02a38b525547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254660781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6972b24c39ea08ce40e0d7f6e47e2ccd2b2745a0030fe28f1e476f4fa70a5e6d`
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
# Mon, 27 Nov 2017 22:17:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.16.1/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.16.1/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 27 Nov 2017 22:17:26 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 27 Nov 2017 22:17:29 GMT
ENV TOMCAT_MAJOR=7
# Mon, 27 Nov 2017 22:17:29 GMT
ENV TOMCAT_VERSION=7.0.82
# Mon, 27 Nov 2017 22:17:29 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Mon, 27 Nov 2017 22:17:29 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 27 Nov 2017 22:17:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 27 Nov 2017 22:17:42 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Mon, 27 Nov 2017 22:17:42 GMT
ENV CONVERTIGO_REVISION=43946
# Mon, 27 Nov 2017 22:17:42 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Mon, 27 Nov 2017 22:17:43 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 27 Nov 2017 22:18:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Mon, 27 Nov 2017 22:18:02 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 27 Nov 2017 22:18:03 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Mon, 27 Nov 2017 22:18:03 GMT
WORKDIR /workspace
# Mon, 27 Nov 2017 22:18:03 GMT
VOLUME [/workspace]
# Mon, 27 Nov 2017 22:18:03 GMT
EXPOSE 28080/tcp
# Mon, 27 Nov 2017 22:18:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 27 Nov 2017 22:18:04 GMT
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
	-	`sha256:519ed3b6e28f158a3e71868949d3bcac613fa03d87a29d439f6f7028e881563c`  
		Last Modified: Mon, 27 Nov 2017 22:19:02 GMT  
		Size: 827.3 KB (827303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e74af05590d5ab5d0e0c8f2823787940f596154cc3d3c4f6fefd78d6e38e39`  
		Last Modified: Mon, 27 Nov 2017 22:18:59 GMT  
		Size: 4.5 KB (4519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b28c834745bfd4815161791b0ff9be76efe0bcc0d5e7c925fdbf55a2a58ba5`  
		Last Modified: Mon, 27 Nov 2017 22:19:01 GMT  
		Size: 7.5 MB (7530452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2edd023e9a3ea2684c84de66ff67f10f58f218f65ed0744c4495a2e9092b5c`  
		Last Modified: Mon, 27 Nov 2017 22:19:55 GMT  
		Size: 95.7 MB (95693713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37635cc308021214f1d0dc67f98104c9f91566ae508352815d898ce356395be`  
		Last Modified: Mon, 27 Nov 2017 22:19:00 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927463f76e6ff12d1fec79784e2dca6842507741b809ea3f2744ecb11aae3557`  
		Last Modified: Mon, 27 Nov 2017 22:18:59 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
