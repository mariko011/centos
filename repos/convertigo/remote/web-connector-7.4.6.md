## `convertigo:web-connector-7.4.6`

```console
$ docker pull convertigo@sha256:7cde1a3a13acc4497e3f37032b1b58c45f5f90caf41b5b2808d2c58e09164368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.6` - linux; amd64

```console
$ docker pull convertigo@sha256:f4a7e8d5709b62c71a4a60c1cb27aaf0e83a50e149ac66592ed6b63453899581
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254736514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69520dd3b7c69e9f9a90ed8e9c28165967f250dd97f71cfde2ca4935e21ac9e8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:29:59 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 09 Oct 2017 22:29:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 09 Oct 2017 22:30:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 09 Oct 2017 22:30:00 GMT
WORKDIR /usr/local/tomcat
# Mon, 09 Oct 2017 22:30:50 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 09 Oct 2017 22:33:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 09 Oct 2017 22:33:45 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 09 Oct 2017 22:33:45 GMT
ENV TOMCAT_MAJOR=7
# Mon, 09 Oct 2017 22:33:45 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 09 Oct 2017 22:33:45 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 09 Oct 2017 22:33:46 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 09 Oct 2017 22:33:56 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 09 Oct 2017 22:33:56 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Mon, 09 Oct 2017 22:33:56 GMT
ENV CONVERTIGO_REVISION=43404
# Mon, 09 Oct 2017 22:33:56 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Mon, 09 Oct 2017 22:33:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 09 Oct 2017 22:34:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Mon, 09 Oct 2017 22:34:12 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 09 Oct 2017 22:34:12 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Mon, 09 Oct 2017 22:34:13 GMT
WORKDIR /workspace
# Mon, 09 Oct 2017 22:34:13 GMT
VOLUME [/workspace]
# Mon, 09 Oct 2017 22:34:13 GMT
EXPOSE 28080/tcp
# Mon, 09 Oct 2017 22:34:14 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 09 Oct 2017 22:34:14 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f178ce52f5aeae534734fc9c9ef69413c0cee7dc56d4613433fc5186af6ebf6e`  
		Last Modified: Mon, 09 Oct 2017 22:37:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a740bccb19083f9389cf7d4f4347b1805fa3774be1eb37d81031af4a482f6`  
		Last Modified: Mon, 09 Oct 2017 22:37:23 GMT  
		Size: 47.5 MB (47513914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13172839ab123db55bc2040741d24c3ef929120a063f8ea2df589ceaaa651c89`  
		Last Modified: Mon, 09 Oct 2017 22:37:21 GMT  
		Size: 50.5 MB (50494143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6297b1adfaf46706c4df646c8a0d4d91127171c633bb04983dd45e5d36b439a5`  
		Last Modified: Mon, 09 Oct 2017 22:37:13 GMT  
		Size: 826.1 KB (826139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b33418b5082dffbdf14365f6b5fd2526545f1155400b285a0a655a4e075d943`  
		Last Modified: Mon, 09 Oct 2017 22:37:09 GMT  
		Size: 4.5 KB (4509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2718d6000b80a9848a7b3fb3f314b9132515905d65fc35267023faa667d2612c`  
		Last Modified: Mon, 09 Oct 2017 22:37:11 GMT  
		Size: 7.5 MB (7473752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558a0c3deab70775706ecd2994bfad731813170120abe39eef8e44908e5c6752`  
		Last Modified: Mon, 09 Oct 2017 22:37:19 GMT  
		Size: 95.8 MB (95827375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d86218b58d6f239b8bcd0f60f05f066ee91727162ebb20ceca8e51927aa32`  
		Last Modified: Mon, 09 Oct 2017 22:37:09 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c514bda15c5de1452ad95ec4180391e445f9560c5e5191f666528cfa7a7a0308`  
		Last Modified: Mon, 09 Oct 2017 22:37:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
