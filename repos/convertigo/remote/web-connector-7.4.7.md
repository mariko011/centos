## `convertigo:web-connector-7.4.7`

```console
$ docker pull convertigo@sha256:e0bb5ee40e7ab0e23b497bd561400e5631783358f9bcee4e87eba475da7f4d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4.7` - linux; amd64

```console
$ docker pull convertigo@sha256:258a350ffef4673318ba4e0cbe0297aef0c174085a6ddb80692e8fec719833f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254671253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d60abecf1ee463bc22710cf3d3ce1cb2c621c4e7419991f9168a8cd3bc14ea`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:56:24 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Tue, 12 Dec 2017 03:56:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 12 Dec 2017 03:56:25 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 12 Dec 2017 03:56:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 12 Dec 2017 03:57:14 GMT
RUN dpkg --add-architecture i386   && apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     lib32z1     libgtk2.0-0:i386     libstdc++6:i386     libxft2:i386     libxt6:i386     libxtst6:i386     unzip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:57:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 12 Dec 2017 03:57:51 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list     && apt-get update -y     && apt-get install -y --no-install-recommends         openjdk-8-jre-headless         openjdk-8-jre-headless:i386         ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION"     && update-java-alternatives --jre-headless -s java-1.8.0-openjdk-i386     && rm -rf /usr/lib/jvm/java-8-openjdk-amd64 /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:57:57 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.16.1/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.16.1/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 12 Dec 2017 03:57:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 12 Dec 2017 03:58:04 GMT
ENV TOMCAT_MAJOR=7
# Tue, 12 Dec 2017 03:58:04 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 12 Dec 2017 03:58:04 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 12 Dec 2017 03:58:04 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 12 Dec 2017 03:58:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 12 Dec 2017 03:58:15 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Tue, 12 Dec 2017 03:58:15 GMT
ENV CONVERTIGO_REVISION=43946
# Tue, 12 Dec 2017 03:58:16 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Tue, 12 Dec 2017 03:58:16 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 12 Dec 2017 03:58:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*)     && rm -rf /tmp/*
# Tue, 12 Dec 2017 03:58:35 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Tue, 12 Dec 2017 03:58:35 GMT
COPY file:83d092e0f8a0315a512b0308560e98254364837b07e70fdf51b85fb0b1992efd in / 
# Tue, 12 Dec 2017 03:58:35 GMT
WORKDIR /workspace
# Tue, 12 Dec 2017 03:58:36 GMT
VOLUME [/workspace]
# Tue, 12 Dec 2017 03:58:36 GMT
EXPOSE 28080/tcp
# Tue, 12 Dec 2017 03:58:36 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 03:58:37 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbd80722471f01a122656707922e2735e01db29f537ba374db0649d28171f72`  
		Last Modified: Tue, 12 Dec 2017 03:58:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff060bc31c8e6eade30752c173da32b78f99ecd40b5fe7fa0a3db65a65986a`  
		Last Modified: Tue, 12 Dec 2017 03:59:06 GMT  
		Size: 47.5 MB (47519632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef67da9387fdf250ccda6f8cfa9900dd2f3c887459af7e10d4363df1edf5e3e`  
		Last Modified: Tue, 12 Dec 2017 03:59:06 GMT  
		Size: 50.5 MB (50494338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0225e13365144e485a030c6b38888addb46cdab13e7351a0c77fe72775b817`  
		Last Modified: Tue, 12 Dec 2017 03:58:57 GMT  
		Size: 827.3 KB (827297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fb2c0c964317c994d88201ae36a7f0c6ba473287d1c517a85c061f8a105d09`  
		Last Modified: Tue, 12 Dec 2017 03:58:53 GMT  
		Size: 4.5 KB (4516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c404a684531f0958a29af39b6970425af02d168c8411b48b25f01c3b7f56f2`  
		Last Modified: Tue, 12 Dec 2017 03:58:57 GMT  
		Size: 7.5 MB (7530462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf04596a711adf49c2fd03cbcf70913d2d4769afe8adb91ebdc5a734e7c1a756`  
		Last Modified: Tue, 12 Dec 2017 03:59:07 GMT  
		Size: 95.7 MB (95693750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71a90498f8d2716eaea5522919ace94672419434d76b71df098d6e3927f8c2`  
		Last Modified: Tue, 12 Dec 2017 03:58:53 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77801d8e55381f43b0a9380a5202252aca8e7f41fbd63c4fea1db9e2930da96c`  
		Last Modified: Tue, 12 Dec 2017 03:58:53 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
