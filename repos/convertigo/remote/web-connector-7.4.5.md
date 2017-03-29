## `convertigo:web-connector-7.4.5`

```console
$ docker pull convertigo@sha256:ac329365f3ab5f2454a66cc4589ecbab99bd3f81e41c663f4b4c1764aa6dc198
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251106023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ea4ddd3259b4ec195e3808a2692804f9a5143868c3bfd06e0dfc36c171332`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 29 Mar 2017 20:13:55 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 29 Mar 2017 20:13:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 29 Mar 2017 20:13:57 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 29 Mar 2017 20:13:57 GMT
WORKDIR /usr/local/tomcat
# Wed, 29 Mar 2017 20:14:51 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 29 Mar 2017 20:14:51 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 29 Mar 2017 20:14:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 29 Mar 2017 20:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION"         openjdk-8-jre-headless:i386="$JAVA_DEBIAN_VERSION"         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 29 Mar 2017 20:15:23 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 29 Mar 2017 20:15:24 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 29 Mar 2017 20:15:25 GMT
ENV TOMCAT_MAJOR=7
# Wed, 29 Mar 2017 20:15:25 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 29 Mar 2017 20:15:25 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 29 Mar 2017 20:15:26 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 29 Mar 2017 20:15:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 29 Mar 2017 20:15:37 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Wed, 29 Mar 2017 20:15:38 GMT
ENV CONVERTIGO_REVISION=43105
# Wed, 29 Mar 2017 20:15:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux32.war
# Wed, 29 Mar 2017 20:15:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 29 Mar 2017 20:16:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 29 Mar 2017 20:16:01 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 29 Mar 2017 20:16:01 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 29 Mar 2017 20:16:01 GMT
WORKDIR /workspace
# Wed, 29 Mar 2017 20:16:02 GMT
VOLUME [/workspace]
# Wed, 29 Mar 2017 20:16:02 GMT
EXPOSE 28080/tcp
# Wed, 29 Mar 2017 20:16:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 20:16:03 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eca2ab3b5dc9c0c4d1edb3eb220511ca28485a3e3c7daf8e7bbf58b4978f53`  
		Last Modified: Wed, 29 Mar 2017 20:17:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91e726abddaac0152b76a3a0dc59fa7843db53f8faed18e41638bd52e1ace48`  
		Last Modified: Wed, 29 Mar 2017 20:18:01 GMT  
		Size: 46.5 MB (46513961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dde9c54e06c80b32058a792c6def6315d1b8351440bd678b650458c398df74a`  
		Last Modified: Wed, 29 Mar 2017 20:17:58 GMT  
		Size: 49.5 MB (49505469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7752cda9e831ae0b6a99c11e48ea648384b9700a820be26e9d1ceff588c1ed`  
		Last Modified: Wed, 29 Mar 2017 20:17:44 GMT  
		Size: 815.1 KB (815063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25a86602a4f98e20cba82d0774d4e4979f10fba724ae410cb3ff3939fff665f`  
		Last Modified: Wed, 29 Mar 2017 20:17:43 GMT  
		Size: 4.5 KB (4456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d43e5d460dc291fa5acc7cd2bc7d00e0a0ee4076bbe7caec5b34715e0959a30`  
		Last Modified: Wed, 29 Mar 2017 20:17:43 GMT  
		Size: 7.5 MB (7474106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d043ac38868bcea727c3ce0e844d6a06177d166120e11cce1eb4d4d9537c37`  
		Last Modified: Wed, 29 Mar 2017 20:17:58 GMT  
		Size: 95.4 MB (95352951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55c971810be2504c8b355819c58eed1c29c62c6b506a022b646cfc43feffb0a`  
		Last Modified: Wed, 29 Mar 2017 20:17:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e163729ea736889c34b123e599d7315433ff70875711b9a0695b240b31fe1e`  
		Last Modified: Wed, 29 Mar 2017 20:17:41 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
