## `convertigo:web-connector`

```console
$ docker pull convertigo@sha256:382f05d4dd5f80d342342acff0578c0c3beb82b3cff605b6e441ffa7dc5a36d0
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254475855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0cd778ff3f4c47f900662f814cc1332239a30a5a9629a756a84d79b02085ad`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 15:35:55 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 26 Jul 2017 15:35:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 26 Jul 2017 15:35:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 26 Jul 2017 15:35:57 GMT
WORKDIR /usr/local/tomcat
# Wed, 26 Jul 2017 15:36:56 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:36:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Jul 2017 15:37:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:37:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 26 Jul 2017 15:37:39 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 26 Jul 2017 15:37:41 GMT
ENV TOMCAT_MAJOR=7
# Wed, 26 Jul 2017 15:37:41 GMT
ENV TOMCAT_VERSION=7.0.72
# Wed, 26 Jul 2017 15:37:41 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Wed, 26 Jul 2017 15:37:42 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 26 Jul 2017 15:37:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 26 Jul 2017 15:37:51 GMT
ENV CONVERTIGO_VERSION=7.4.6
# Wed, 26 Jul 2017 15:37:51 GMT
ENV CONVERTIGO_REVISION=43404
# Wed, 26 Jul 2017 15:37:51 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.6/convertigo-7.4.6-v43404-linux32.war
# Wed, 26 Jul 2017 15:37:52 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 26 Jul 2017 15:38:06 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Wed, 26 Jul 2017 15:38:06 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 26 Jul 2017 15:38:07 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Wed, 26 Jul 2017 15:38:07 GMT
WORKDIR /workspace
# Wed, 26 Jul 2017 15:38:07 GMT
VOLUME [/workspace]
# Wed, 26 Jul 2017 15:38:08 GMT
EXPOSE 28080/tcp
# Wed, 26 Jul 2017 15:38:08 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 26 Jul 2017 15:38:08 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d324f4a288b8f40d05e2b77e054f0cc50579dcd9feba5a15e6224f9a70a1a0`  
		Last Modified: Wed, 26 Jul 2017 15:38:36 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85102c1896e1eecae122ffae7c703e93da6d098cb4b234652a168d948b67742`  
		Last Modified: Wed, 26 Jul 2017 15:38:46 GMT  
		Size: 47.5 MB (47513182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2356897e94303265e0079915cf25675043db81427774c84ea754222091ab856d`  
		Last Modified: Wed, 26 Jul 2017 15:38:45 GMT  
		Size: 50.2 MB (50225866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7309ace9d06c9e1d1f74c2ab6f75375ebe298ca6224d3a2bf45bf998f352db62`  
		Last Modified: Wed, 26 Jul 2017 15:38:34 GMT  
		Size: 826.1 KB (826136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71232804f42d2f7d06de42393057e9944576720316007ab02eeda6c0c4e8f09`  
		Last Modified: Wed, 26 Jul 2017 15:38:34 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ffdc4a797efc4469b7ebf6ff18dcb0971fdd444313d714bd41cb1e3a695a7d`  
		Last Modified: Wed, 26 Jul 2017 15:38:35 GMT  
		Size: 7.5 MB (7473740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274c1e7c0b21f7e9696e8629747b707058970c7bed8db97e9a464a8c610516a8`  
		Last Modified: Wed, 26 Jul 2017 15:38:45 GMT  
		Size: 95.8 MB (95825276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101d7c6805efa86319e6f71ce5f0ab59e6459f1e3b5056ed3560e59492e6c7b0`  
		Last Modified: Wed, 26 Jul 2017 15:38:33 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a360cbb91156e36fb0d3e43f03fa47a51da3dd9368774b7a56ce95a6e419fc79`  
		Last Modified: Wed, 26 Jul 2017 15:38:33 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
