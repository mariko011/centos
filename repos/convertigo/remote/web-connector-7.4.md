## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:9b9d934a7344e2457dddff1d7e1ce5d67c12df76cec6da21bc49dace309e869c
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254481315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe4018598a6200f3f94cbdef85acd4d4c9adf37c78bd13bf7307b6d91a20c0a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 14:24:55 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 23 Jun 2017 14:24:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 23 Jun 2017 14:24:58 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 23 Jun 2017 14:24:59 GMT
WORKDIR /usr/local/tomcat
# Fri, 23 Jun 2017 14:25:42 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 14:25:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 14:26:08 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Fri, 23 Jun 2017 14:26:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 23 Jun 2017 14:26:16 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 23 Jun 2017 14:26:17 GMT
ENV TOMCAT_MAJOR=7
# Fri, 23 Jun 2017 14:26:18 GMT
ENV TOMCAT_VERSION=7.0.72
# Fri, 23 Jun 2017 14:26:19 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Fri, 23 Jun 2017 14:26:20 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 23 Jun 2017 14:26:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 23 Jun 2017 14:26:30 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Fri, 23 Jun 2017 14:26:31 GMT
ENV CONVERTIGO_REVISION=43404
# Fri, 23 Jun 2017 14:26:32 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Fri, 23 Jun 2017 14:26:33 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 23 Jun 2017 14:26:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Fri, 23 Jun 2017 14:26:49 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Fri, 23 Jun 2017 14:26:50 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Fri, 23 Jun 2017 14:26:51 GMT
WORKDIR /workspace
# Fri, 23 Jun 2017 14:26:52 GMT
VOLUME [/workspace]
# Fri, 23 Jun 2017 14:26:54 GMT
EXPOSE 28080/tcp
# Fri, 23 Jun 2017 14:26:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 23 Jun 2017 14:26:56 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2f50bfc161a27e4fca418ecbe2d9f33f25d814ef0dcee1a9450ea62daf5bf0`  
		Last Modified: Sun, 25 Jun 2017 07:33:01 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e042e73d677b9dfbdba85e10560d9398dad82f0102f8df0ba58521a938f28`  
		Last Modified: Sun, 25 Jun 2017 07:33:14 GMT  
		Size: 47.5 MB (47509657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e710a8c0af8ff0a75dc0249e517eda2aa2562aa66c52db5efd194a0aae0042c`  
		Last Modified: Sun, 25 Jun 2017 07:33:12 GMT  
		Size: 50.2 MB (50225766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5950d59beb7a7d0b5754aaccffb30afb4acec2cedff6cfcace83baea6787a94d`  
		Last Modified: Sun, 25 Jun 2017 07:32:59 GMT  
		Size: 826.1 KB (826123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec006e40ed7ee2ce41a48e0765fb3728c5cb59ef9928564f6f173971d965d609`  
		Last Modified: Sun, 25 Jun 2017 07:32:58 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f016a37f6644a7a8014e06864f3d2f386cf6d7069b3f6dac05f7a104db17917`  
		Last Modified: Sun, 25 Jun 2017 07:32:59 GMT  
		Size: 7.5 MB (7473762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fce867de199dc0b5dcedeb590f4716580dc20fc15b4c322a79d13e8d70b0a2`  
		Last Modified: Sun, 25 Jun 2017 07:33:14 GMT  
		Size: 95.8 MB (95825177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8ec7dcf7a9fd748f8cf8740b75adbae6d2fccfc64a404c36f13d17b281b555`  
		Last Modified: Sun, 25 Jun 2017 07:32:59 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9229e3c5bd22d20ceed4a6917db090becf53ffcdd1c209817ade682f7e499fa`  
		Last Modified: Sun, 25 Jun 2017 07:32:58 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
