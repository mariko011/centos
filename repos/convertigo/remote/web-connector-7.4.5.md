## `convertigo:web-connector-7.4.5`

```console
$ docker pull convertigo@sha256:393181b5a1d86efbdc376d317b0561bb142503e88e51f5772adef8816954317c
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254328880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e60c0c38711ab655cd4c84446ab4620e0d63fc786e9946cd4211d0fe3d5fef`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:26:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 24 Apr 2017 22:26:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 24 Apr 2017 22:26:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 24 Apr 2017 22:26:50 GMT
WORKDIR /usr/local/tomcat
# Mon, 24 Apr 2017 22:27:42 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:27:54 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Mon, 24 Apr 2017 22:27:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 24 Apr 2017 22:28:24 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION"         openjdk-8-jre-headless:i386="$JAVA_DEBIAN_VERSION"         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:28:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 24 Apr 2017 22:28:52 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 24 Apr 2017 22:28:53 GMT
ENV TOMCAT_MAJOR=7
# Mon, 24 Apr 2017 22:28:54 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 24 Apr 2017 22:28:54 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 24 Apr 2017 22:28:55 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 24 Apr 2017 22:29:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 24 Apr 2017 22:29:18 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Mon, 24 Apr 2017 22:29:18 GMT
ENV CONVERTIGO_REVISION=43105
# Mon, 24 Apr 2017 22:29:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux32.war
# Mon, 24 Apr 2017 22:29:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 24 Apr 2017 22:29:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Mon, 24 Apr 2017 22:29:54 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 24 Apr 2017 22:29:55 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Mon, 24 Apr 2017 22:29:56 GMT
WORKDIR /workspace
# Mon, 24 Apr 2017 22:29:57 GMT
VOLUME [/workspace]
# Mon, 24 Apr 2017 22:29:58 GMT
EXPOSE 28080/tcp
# Mon, 24 Apr 2017 22:29:58 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 22:29:59 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11216a77199f925a5739483dc6f0afd265898a4505664b41ff4e202ad8f50f95`  
		Last Modified: Wed, 26 Apr 2017 00:13:04 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901da5a590ebd85de2fffc48285cb9649fe9af37d09216d4d77eff7d5f052a58`  
		Last Modified: Wed, 26 Apr 2017 00:13:15 GMT  
		Size: 47.5 MB (47491997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02326840ea8dc15c7be70755237e6f9ddf8a92a25e85094cda572749c775a795`  
		Last Modified: Wed, 26 Apr 2017 00:13:13 GMT  
		Size: 50.2 MB (50211563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24529b4eb82fa895516f8318a17272d18a1c778fe5140d637de38edec6e7512`  
		Last Modified: Wed, 26 Apr 2017 00:13:02 GMT  
		Size: 826.1 KB (826123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aaf51af9ba16f3172684ce6d49d2a7f45e1ea4db914d2a834cb9cb2f3ba536`  
		Last Modified: Wed, 26 Apr 2017 00:13:00 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff94bd6a560468e12a614d95060176b8c792d513f086b9004ce12d01664a255`  
		Last Modified: Wed, 26 Apr 2017 00:13:01 GMT  
		Size: 7.5 MB (7473749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffb8a783b34e868b66f8d3dc5264daf6dbe4ca5814ed824df325a12bb1df0b7`  
		Last Modified: Wed, 26 Apr 2017 00:13:12 GMT  
		Size: 95.8 MB (95769160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ece5dc0cab35f26dc8956c962440045afc73ba8d007c196fccad1ee8f2b9135`  
		Last Modified: Wed, 26 Apr 2017 00:13:00 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd09e90984211fc569f1d47cfff8ad85664e4b2fb58016ab24f9c7beb7dae09`  
		Last Modified: Wed, 26 Apr 2017 00:12:59 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
