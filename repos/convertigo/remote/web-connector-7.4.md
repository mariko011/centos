## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:ad85dce9a302a62ffb4dc7fbe8770e5effd304c6d4a3360b161a47f85e044bf9
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254367192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44ac134aec6edd0b0d7b4a392cdfa640f5bdc51ad64408a00846910977c3b5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 16:18:46 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Tue, 09 May 2017 16:18:46 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 09 May 2017 16:18:48 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 09 May 2017 16:18:49 GMT
WORKDIR /usr/local/tomcat
# Tue, 09 May 2017 16:19:24 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 16:19:25 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 09 May 2017 16:19:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 09 May 2017 16:19:47 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION"         openjdk-8-jre-headless:i386="$JAVA_DEBIAN_VERSION"         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Tue, 09 May 2017 16:19:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 09 May 2017 16:19:57 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 09 May 2017 16:19:58 GMT
ENV TOMCAT_MAJOR=7
# Tue, 09 May 2017 16:19:58 GMT
ENV TOMCAT_VERSION=7.0.72
# Tue, 09 May 2017 16:19:59 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Tue, 09 May 2017 16:20:00 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 09 May 2017 16:20:10 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 09 May 2017 16:20:10 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Tue, 09 May 2017 16:20:11 GMT
ENV CONVERTIGO_REVISION=43105
# Tue, 09 May 2017 16:20:12 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux32.war
# Tue, 09 May 2017 16:20:12 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 09 May 2017 16:20:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Tue, 09 May 2017 16:20:29 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Tue, 09 May 2017 16:20:30 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Tue, 09 May 2017 16:20:30 GMT
WORKDIR /workspace
# Tue, 09 May 2017 16:20:31 GMT
VOLUME [/workspace]
# Tue, 09 May 2017 16:20:32 GMT
EXPOSE 28080/tcp
# Tue, 09 May 2017 16:20:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 09 May 2017 16:20:34 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cdc6d49ff95306c7af114fa0a0680b920da4d166e75ba8b2e1ed69f808a7c7`  
		Last Modified: Sat, 13 May 2017 15:13:09 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bd701bd0d756e9e95d102d0bb414d571fe6500b95186a7181c0bf951cb0159`  
		Last Modified: Sat, 13 May 2017 15:13:21 GMT  
		Size: 47.5 MB (47497036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30b24bd8594d5b2dcd36d1df7ba3d27688237b5b1b643906425fb7759358c62`  
		Last Modified: Sat, 13 May 2017 15:13:20 GMT  
		Size: 50.2 MB (50211083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec648f416f08c16bbfed78de15ff70f6d274ee63cc021c40197da35cb21f414`  
		Last Modified: Sat, 13 May 2017 15:13:08 GMT  
		Size: 826.1 KB (826128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4e44d581497b47b06b27d3dc3e4d35e9e00da31c364eb80d38c8cff42380c`  
		Last Modified: Sat, 13 May 2017 15:13:07 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123df5bae7fe15e9a5607ea39c5f30c662af3d443979cd073469cc0914ec7e0c`  
		Last Modified: Sat, 13 May 2017 15:13:08 GMT  
		Size: 7.5 MB (7473740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97343353b36fc42bd49bce2f08b596367ccf91b0151d748371dfa4e4b977d994`  
		Last Modified: Sat, 13 May 2017 15:13:21 GMT  
		Size: 95.8 MB (95769160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a844ed746789bf6cc8d4489cff04693158459b86ba16c0b4ddb04922389177`  
		Last Modified: Sat, 13 May 2017 15:13:07 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f010e697a0cbfe8a6a57450c0317820a0a37a87c4d22a12d121edf9cb5b93`  
		Last Modified: Sat, 13 May 2017 15:13:07 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
