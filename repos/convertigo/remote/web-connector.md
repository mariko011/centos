## `convertigo:web-connector`

```console
$ docker pull convertigo@sha256:b797ded27090ee14a93c926936665baa48b5b5a14b7f189e608c01d15bb9292e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector` - linux; amd64

```console
$ docker pull convertigo@sha256:37744b1f2b6d99e1d8efa01430a1d119a05d81ec4a2f79ebf87929416ebf8da7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254736497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f713999220be078e3cf932dd3c32633af0de7b004941658007a97b6f32ccedc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:46:46 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 03 Nov 2017 22:46:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 03 Nov 2017 22:46:48 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 03 Nov 2017 22:46:48 GMT
WORKDIR /usr/local/tomcat
# Fri, 03 Nov 2017 22:47:37 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 03 Nov 2017 22:48:18 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:48:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 03 Nov 2017 22:48:25 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 03 Nov 2017 22:48:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 03 Nov 2017 22:48:26 GMT
ENV TOMCAT_VERSION=7.0.72
# Fri, 03 Nov 2017 22:48:26 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Fri, 03 Nov 2017 22:48:26 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 03 Nov 2017 22:48:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 03 Nov 2017 22:48:40 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Fri, 03 Nov 2017 22:48:41 GMT
ENV CONVERTIGO_REVISION=43404
# Fri, 03 Nov 2017 22:48:41 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Fri, 03 Nov 2017 22:48:41 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 03 Nov 2017 22:48:59 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Fri, 03 Nov 2017 22:48:59 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Fri, 03 Nov 2017 22:49:00 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Fri, 03 Nov 2017 22:49:00 GMT
WORKDIR /workspace
# Fri, 03 Nov 2017 22:49:00 GMT
VOLUME [/workspace]
# Fri, 03 Nov 2017 22:49:00 GMT
EXPOSE 28080/tcp
# Fri, 03 Nov 2017 22:49:01 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:49:01 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e8a3bb2809df8a5d183c1e346a8b7dad6ab22391360a393cd7d11ce026a1b`  
		Last Modified: Fri, 03 Nov 2017 22:49:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8753c74734a27efbbbc3b28861c8ccf77eb0ce08305d4b66e4dcf0d6b85e1d`  
		Last Modified: Fri, 03 Nov 2017 22:49:46 GMT  
		Size: 47.5 MB (47513808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db37a4d9c9a8542de4d087e0aa219aa6da237ac88a5445285bd9a15a6a495db`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 50.5 MB (50494219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc84f0c92494c520c345060a6e499cc3ae56e36fec3f2a37eb247f7ff88da9ff`  
		Last Modified: Fri, 03 Nov 2017 22:49:36 GMT  
		Size: 826.1 KB (826136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e68717f670159d2790be7bda3af59b73a3e15ec77b4e006198e3be4e82c555`  
		Last Modified: Fri, 03 Nov 2017 22:49:35 GMT  
		Size: 4.5 KB (4513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d9402094a93f221d801fa4062e1a7f62305c13d56c6e012e77232cc6a04a63`  
		Last Modified: Fri, 03 Nov 2017 22:49:34 GMT  
		Size: 7.5 MB (7473747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad7b25c320c5d0d7021bb7dcbcf9ab662d8d06eda951e23c5aa6b5bfcb26841`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 95.8 MB (95827393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861b6d5115181d5307c737ce2bc9c4e01d47c1fbbb2c5263da6eab2d7d3ea3f2`  
		Last Modified: Fri, 03 Nov 2017 22:49:33 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb6d3d309556ba0c9503a9ee7e0a678546d70a85390a5b14d80ac2e7d14e55d`  
		Last Modified: Fri, 03 Nov 2017 22:49:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
