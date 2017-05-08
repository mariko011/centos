<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `convertigo`

-	[`convertigo:7.4.5`](#convertigo745)
-	[`convertigo:7.4`](#convertigo74)
-	[`convertigo:latest`](#convertigolatest)
-	[`convertigo:web-connector-7.4.5`](#convertigoweb-connector-745)
-	[`convertigo:web-connector-7.4`](#convertigoweb-connector-74)
-	[`convertigo:web-connector`](#convertigoweb-connector)

## `convertigo:7.4.5`

```console
$ docker pull convertigo@sha256:ab9f701a859d6860abbc7773dce110cb1e97c563e0c7321ab59cb03665d672b9
```

-	Platforms:
	-	linux; amd64

### `convertigo:7.4.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218105184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65242e901c781379b69f19acd38919bd8a77a0bfe944f06e66d6a9352bf78b5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:07:09 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 08 May 2017 21:07:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 08 May 2017 21:07:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 08 May 2017 21:07:13 GMT
WORKDIR /usr/local/tomcat
# Mon, 08 May 2017 21:07:30 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 21:07:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 08 May 2017 21:07:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 08 May 2017 21:07:39 GMT
ENV TOMCAT_MAJOR=7
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 08 May 2017 21:07:41 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 08 May 2017 21:07:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_REVISION=43105
# Mon, 08 May 2017 21:07:52 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux64.war
# Mon, 08 May 2017 21:07:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 08 May 2017 21:08:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 08 May 2017 21:08:10 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Mon, 08 May 2017 21:08:11 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Mon, 08 May 2017 21:08:12 GMT
WORKDIR /workspace
# Mon, 08 May 2017 21:08:13 GMT
VOLUME [/workspace]
# Mon, 08 May 2017 21:08:13 GMT
EXPOSE 28080/tcp
# Mon, 08 May 2017 21:08:14 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 08 May 2017 21:08:15 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747ea624988cdff2eee82777f63db7d543939b2b7033f2b17e7a28d0cbfc9237`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80506ef873c03e4acde10d74dd875404cfb4a7c718a7e6151b003819c2182fa1`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 1.4 MB (1358303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22faf5f63b439ed7c3cb0efdb3f5f0141364861e77a6d92aace6bbde117b9de6`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 826.1 KB (826132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc3fb8d3f94c87c3f3bd3adb7619f08e6f7dec8a00b699b264ba8777162911`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 4.5 KB (4541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a859913a16ed2a4668d36b651d6d98071a5f676f6de5c187938da9f4cd7fdbf`  
		Last Modified: Mon, 08 May 2017 21:08:41 GMT  
		Size: 7.5 MB (7473762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc751cbc5e08e1f5ec3d3ff3ca900ca051c28b17fbd4c704644273023bcc19`  
		Last Modified: Mon, 08 May 2017 21:08:44 GMT  
		Size: 81.7 MB (81701327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d21e4c82b960ea2b79e0586f24bf2847d7aba67705d7b5166593f4d358d1511`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b620d429a49b71c151bfad99aac467361c6f5dd3d4c523ecf6c91b1280b07`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4`

```console
$ docker pull convertigo@sha256:ab9f701a859d6860abbc7773dce110cb1e97c563e0c7321ab59cb03665d672b9
```

-	Platforms:
	-	linux; amd64

### `convertigo:7.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218105184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65242e901c781379b69f19acd38919bd8a77a0bfe944f06e66d6a9352bf78b5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:07:09 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 08 May 2017 21:07:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 08 May 2017 21:07:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 08 May 2017 21:07:13 GMT
WORKDIR /usr/local/tomcat
# Mon, 08 May 2017 21:07:30 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 21:07:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 08 May 2017 21:07:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 08 May 2017 21:07:39 GMT
ENV TOMCAT_MAJOR=7
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 08 May 2017 21:07:41 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 08 May 2017 21:07:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_REVISION=43105
# Mon, 08 May 2017 21:07:52 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux64.war
# Mon, 08 May 2017 21:07:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 08 May 2017 21:08:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 08 May 2017 21:08:10 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Mon, 08 May 2017 21:08:11 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Mon, 08 May 2017 21:08:12 GMT
WORKDIR /workspace
# Mon, 08 May 2017 21:08:13 GMT
VOLUME [/workspace]
# Mon, 08 May 2017 21:08:13 GMT
EXPOSE 28080/tcp
# Mon, 08 May 2017 21:08:14 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 08 May 2017 21:08:15 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747ea624988cdff2eee82777f63db7d543939b2b7033f2b17e7a28d0cbfc9237`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80506ef873c03e4acde10d74dd875404cfb4a7c718a7e6151b003819c2182fa1`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 1.4 MB (1358303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22faf5f63b439ed7c3cb0efdb3f5f0141364861e77a6d92aace6bbde117b9de6`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 826.1 KB (826132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc3fb8d3f94c87c3f3bd3adb7619f08e6f7dec8a00b699b264ba8777162911`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 4.5 KB (4541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a859913a16ed2a4668d36b651d6d98071a5f676f6de5c187938da9f4cd7fdbf`  
		Last Modified: Mon, 08 May 2017 21:08:41 GMT  
		Size: 7.5 MB (7473762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc751cbc5e08e1f5ec3d3ff3ca900ca051c28b17fbd4c704644273023bcc19`  
		Last Modified: Mon, 08 May 2017 21:08:44 GMT  
		Size: 81.7 MB (81701327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d21e4c82b960ea2b79e0586f24bf2847d7aba67705d7b5166593f4d358d1511`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b620d429a49b71c151bfad99aac467361c6f5dd3d4c523ecf6c91b1280b07`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:ab9f701a859d6860abbc7773dce110cb1e97c563e0c7321ab59cb03665d672b9
```

-	Platforms:
	-	linux; amd64

### `convertigo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218105184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65242e901c781379b69f19acd38919bd8a77a0bfe944f06e66d6a9352bf78b5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:07:09 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 08 May 2017 21:07:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 08 May 2017 21:07:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 08 May 2017 21:07:13 GMT
WORKDIR /usr/local/tomcat
# Mon, 08 May 2017 21:07:30 GMT
RUN apt-get update -y && apt-get install -y --no-install-recommends     ca-certificates     curl     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 21:07:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.7/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v0.9.0/tini.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 08 May 2017 21:07:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 08 May 2017 21:07:39 GMT
ENV TOMCAT_MAJOR=7
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_VERSION=7.0.72
# Mon, 08 May 2017 21:07:40 GMT
ENV TOMCAT_TGZ_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
# Mon, 08 May 2017 21:07:41 GMT
ENV TOMCAT_GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 08 May 2017 21:07:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && for key in $TOMCAT_GPG_KEYS; do          gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";        done;     curl -fSL -o /tmp/tomcat.tar.gz $TOMCAT_TGZ_URL     && curl -fSL -o /tmp/tomcat.tar.gz.asc $TOMCAT_TGZ_URL.asc     && gpg --batch --verify /tmp/tomcat.tar.gz.asc /tmp/tomcat.tar.gz     && tar -xvf /tmp/tomcat.tar.gz --strip-components=1     && sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_VERSION=7.4.5
# Mon, 08 May 2017 21:07:51 GMT
ENV CONVERTIGO_REVISION=43105
# Mon, 08 May 2017 21:07:52 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.5/convertigo-7.4.5-v43105-linux64.war
# Mon, 08 May 2017 21:07:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 08 May 2017 21:08:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 08 May 2017 21:08:10 GMT
COPY file:eccfef5b39339e2a9ab87231ac8ef2a1783b7ae7fd6f21aa6f0a825520cdb73c in webapps/ROOT/index.html 
# Mon, 08 May 2017 21:08:11 GMT
COPY file:67d755c96109afb6b52870db09484b9a059f689f60852896862881c103c815a5 in / 
# Mon, 08 May 2017 21:08:12 GMT
WORKDIR /workspace
# Mon, 08 May 2017 21:08:13 GMT
VOLUME [/workspace]
# Mon, 08 May 2017 21:08:13 GMT
EXPOSE 28080/tcp
# Mon, 08 May 2017 21:08:14 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 08 May 2017 21:08:15 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747ea624988cdff2eee82777f63db7d543939b2b7033f2b17e7a28d0cbfc9237`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80506ef873c03e4acde10d74dd875404cfb4a7c718a7e6151b003819c2182fa1`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 1.4 MB (1358303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22faf5f63b439ed7c3cb0efdb3f5f0141364861e77a6d92aace6bbde117b9de6`  
		Last Modified: Mon, 08 May 2017 21:08:39 GMT  
		Size: 826.1 KB (826132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc3fb8d3f94c87c3f3bd3adb7619f08e6f7dec8a00b699b264ba8777162911`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 4.5 KB (4541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a859913a16ed2a4668d36b651d6d98071a5f676f6de5c187938da9f4cd7fdbf`  
		Last Modified: Mon, 08 May 2017 21:08:41 GMT  
		Size: 7.5 MB (7473762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc751cbc5e08e1f5ec3d3ff3ca900ca051c28b17fbd4c704644273023bcc19`  
		Last Modified: Mon, 08 May 2017 21:08:44 GMT  
		Size: 81.7 MB (81701327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d21e4c82b960ea2b79e0586f24bf2847d7aba67705d7b5166593f4d358d1511`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535b620d429a49b71c151bfad99aac467361c6f5dd3d4c523ecf6c91b1280b07`  
		Last Modified: Mon, 08 May 2017 21:08:38 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `convertigo:web-connector-7.4`

```console
$ docker pull convertigo@sha256:393181b5a1d86efbdc376d317b0561bb142503e88e51f5772adef8816954317c
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector-7.4` - linux; amd64

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

## `convertigo:web-connector`

```console
$ docker pull convertigo@sha256:393181b5a1d86efbdc376d317b0561bb142503e88e51f5772adef8816954317c
```

-	Platforms:
	-	linux; amd64

### `convertigo:web-connector` - linux; amd64

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
