<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:6`](#nuxeo6)
-	[`nuxeo:6.0`](#nuxeo60)
-	[`nuxeo:7`](#nuxeo7)
-	[`nuxeo:7.10`](#nuxeo710)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.10`](#nuxeo810)
-	[`nuxeo:9`](#nuxeo9)
-	[`nuxeo:9.1`](#nuxeo91)
-	[`nuxeo:9.2`](#nuxeo92)
-	[`nuxeo:FT`](#nuxeoft)
-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:LTS-2014`](#nuxeolts-2014)
-	[`nuxeo:LTS-2015`](#nuxeolts-2015)
-	[`nuxeo:LTS-2016`](#nuxeolts-2016)

## `nuxeo:6`

```console
$ docker pull nuxeo@sha256:2ca504f5ba16799c2cdeaf4bf7f1b4e20c28def79a75d24ffa1ff1fbcc7f69c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:6` - linux; amd64

```console
$ docker pull nuxeo@sha256:25b1f8fc83eb0ca1cc88f0017e24e60739827e694f1c7102baaf97e71e9edabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.9 MB (904876573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f8cd7cee9e36d7c7014740ea2f03d9dbfeb12de39d5cf79ddebd6f1eda8f21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:24 GMT
ARG NUXEO_VERSION=6.0
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Thu, 14 Sep 2017 07:29:27 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:29:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:29:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:29:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:29:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:29:50 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:29:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440817833699292a6bc9ae89cd1802d26dc9c82b49dbe15816476923943a61ea`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d14c58658a72baea28e6faefa0f9ccb9c247f1580c016d2d1b843f0701be89b`  
		Last Modified: Thu, 14 Sep 2017 07:43:22 GMT  
		Size: 187.2 MB (187195359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000bc0ea891f05fc5b723580b509aba4507c4ef0d03e1f63edf51735ec4ba1da`  
		Last Modified: Thu, 14 Sep 2017 07:43:21 GMT  
		Size: 187.2 MB (187196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c59d88da2e8a219add29cc1c7d565754080b72d2c1c7d1a2c7544a9e222c61`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e429a745312691607f3fd5e18323536a6759864d2861b184c965c482ccb427a`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6.0`

```console
$ docker pull nuxeo@sha256:2ca504f5ba16799c2cdeaf4bf7f1b4e20c28def79a75d24ffa1ff1fbcc7f69c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:6.0` - linux; amd64

```console
$ docker pull nuxeo@sha256:25b1f8fc83eb0ca1cc88f0017e24e60739827e694f1c7102baaf97e71e9edabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.9 MB (904876573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f8cd7cee9e36d7c7014740ea2f03d9dbfeb12de39d5cf79ddebd6f1eda8f21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:24 GMT
ARG NUXEO_VERSION=6.0
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Thu, 14 Sep 2017 07:29:27 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:29:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:29:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:29:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:29:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:29:50 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:29:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440817833699292a6bc9ae89cd1802d26dc9c82b49dbe15816476923943a61ea`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d14c58658a72baea28e6faefa0f9ccb9c247f1580c016d2d1b843f0701be89b`  
		Last Modified: Thu, 14 Sep 2017 07:43:22 GMT  
		Size: 187.2 MB (187195359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000bc0ea891f05fc5b723580b509aba4507c4ef0d03e1f63edf51735ec4ba1da`  
		Last Modified: Thu, 14 Sep 2017 07:43:21 GMT  
		Size: 187.2 MB (187196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c59d88da2e8a219add29cc1c7d565754080b72d2c1c7d1a2c7544a9e222c61`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e429a745312691607f3fd5e18323536a6759864d2861b184c965c482ccb427a`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:a6a3eeb82517d79f643b79eb4adf5bfefb5d42f0fa07c7f6fc447ea5470a7eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:01156529f4d91f90f9940fb96717613bc2ef593b77f276e4ed372f3390fb8ccf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1091402238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db070fa4f229bc852e3d5a2596326b87e904ea9add91bf498b498e5031d0607c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:53 GMT
ARG NUXEO_VERSION=7.10
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 14 Sep 2017 07:29:54 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:30:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:30:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:30:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:30:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:30:38 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:30:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:30:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeedcfa3df00477c99cedb2033126f120782a38f56d81581788c334a91c6bb02`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85847eedd5fa142c01d647f4a20040c54c6485a1b29e587abbc98378c9e6f6b`  
		Last Modified: Thu, 14 Sep 2017 07:44:50 GMT  
		Size: 280.5 MB (280457921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27852539fbceb38d2a46d61bfcb1e4a1c0d00e2b795a75735bd2fe9592c7e6`  
		Last Modified: Thu, 14 Sep 2017 07:44:55 GMT  
		Size: 280.5 MB (280459888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffa2797e16aa0d1b8dbebd9ae76d734b09ca2239a64bbdbea8da37512f0c800`  
		Last Modified: Thu, 14 Sep 2017 07:44:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d634ee09d3a5b9eca4e415c646cf857a1a9c56d9d8d4248dc4b618afaaea10f`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:a6a3eeb82517d79f643b79eb4adf5bfefb5d42f0fa07c7f6fc447ea5470a7eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:01156529f4d91f90f9940fb96717613bc2ef593b77f276e4ed372f3390fb8ccf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1091402238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db070fa4f229bc852e3d5a2596326b87e904ea9add91bf498b498e5031d0607c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:53 GMT
ARG NUXEO_VERSION=7.10
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 14 Sep 2017 07:29:54 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:30:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:30:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:30:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:30:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:30:38 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:30:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:30:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeedcfa3df00477c99cedb2033126f120782a38f56d81581788c334a91c6bb02`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85847eedd5fa142c01d647f4a20040c54c6485a1b29e587abbc98378c9e6f6b`  
		Last Modified: Thu, 14 Sep 2017 07:44:50 GMT  
		Size: 280.5 MB (280457921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27852539fbceb38d2a46d61bfcb1e4a1c0d00e2b795a75735bd2fe9592c7e6`  
		Last Modified: Thu, 14 Sep 2017 07:44:55 GMT  
		Size: 280.5 MB (280459888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffa2797e16aa0d1b8dbebd9ae76d734b09ca2239a64bbdbea8da37512f0c800`  
		Last Modified: Thu, 14 Sep 2017 07:44:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d634ee09d3a5b9eca4e415c646cf857a1a9c56d9d8d4248dc4b618afaaea10f`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:f07baa8defb975b6b0b093a5d6965a86a0722503d4728500d11f29aa780a0870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:24abcb9e9468a98ba7e041818153a5c9c8429d6cdf40df89e0b7c28b9e67128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1069729841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782994db33c322a24465002923de463096dc818906beadcc08ade81221f3048e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_VERSION=8.10
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 14 Sep 2017 07:34:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:34:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:36:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:36:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:36:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:36:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:36:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:36:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:36:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfa34db9cb40cce173ba20b062f8f889aafc13fae34317a8f3b5b3a2059f0c`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1104e60e7b6abda39b76f6624de1f16e6a3739809fbea1113fec4d467c99e8`  
		Last Modified: Thu, 14 Sep 2017 07:45:41 GMT  
		Size: 269.6 MB (269622100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be78b6b067cba9e77b967a059476e2767b2778fb7723dbac6cf003183421e4`  
		Last Modified: Thu, 14 Sep 2017 07:45:43 GMT  
		Size: 269.6 MB (269624392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581413cb4674888ef847ec0265c3ea73043c2b86ca7ac90ef2f09f061fff3fcd`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9a80e5b9dcf800b00af5b6a43324a8a325a4f2ad46f5a96d79377d5abb7f4b`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:f07baa8defb975b6b0b093a5d6965a86a0722503d4728500d11f29aa780a0870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:24abcb9e9468a98ba7e041818153a5c9c8429d6cdf40df89e0b7c28b9e67128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1069729841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782994db33c322a24465002923de463096dc818906beadcc08ade81221f3048e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_VERSION=8.10
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 14 Sep 2017 07:34:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:34:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:36:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:36:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:36:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:36:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:36:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:36:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:36:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfa34db9cb40cce173ba20b062f8f889aafc13fae34317a8f3b5b3a2059f0c`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1104e60e7b6abda39b76f6624de1f16e6a3739809fbea1113fec4d467c99e8`  
		Last Modified: Thu, 14 Sep 2017 07:45:41 GMT  
		Size: 269.6 MB (269622100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be78b6b067cba9e77b967a059476e2767b2778fb7723dbac6cf003183421e4`  
		Last Modified: Thu, 14 Sep 2017 07:45:43 GMT  
		Size: 269.6 MB (269624392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581413cb4674888ef847ec0265c3ea73043c2b86ca7ac90ef2f09f061fff3fcd`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9a80e5b9dcf800b00af5b6a43324a8a325a4f2ad46f5a96d79377d5abb7f4b`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:276f5b18dc342e36b2947ef4d329ced0c4091e0920d8aecc684a4a91ddc96988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:19f43d3e9bb1d7c4025dfc979a751277df0d146e19def72c1ee70bfce47ed891
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1316637151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287077ea57104da190f1ab1b389360cf05c00fea9508bac6edc2d33b2216ff6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_VERSION=9.2
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_MD5=fe08b58a881391fc74344880f80b7a78
# Thu, 14 Sep 2017 07:39:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:40:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 14 Sep 2017 07:40:51 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Thu, 14 Sep 2017 07:40:51 GMT
COPY file:db23770543718ea1338bd9385928b5cc17b8000b594267b835e7047334330e3a in /etc/nuxeo/nuxeo.conf.template 
# Thu, 14 Sep 2017 07:40:52 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 14 Sep 2017 07:40:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:40:59 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:40:59 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:40:59 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Thu, 14 Sep 2017 07:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:40:59 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:41:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008db1684d73d5b8ac71675aa4dbd1251aac4c23a81f9a45d0f237f01437d3d7`  
		Last Modified: Thu, 14 Sep 2017 07:47:38 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c7700e7f3eb6d1279023243be29a7e5de296e70557afb042697b6fbd6bfa17`  
		Last Modified: Thu, 14 Sep 2017 07:48:19 GMT  
		Size: 393.1 MB (393076459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d3dc2573f8458f73f7fbf46288279214606480a6fdaf562911b7652aa798d2`  
		Last Modified: Thu, 14 Sep 2017 07:47:37 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7797e330d1eb116e4774f3bbe00361d0031ff02427150f3eaa295f81b411360`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fb37ce8bc4cb30fde7f519079479beee8322bdda5cbcaec719a15a642a80a`  
		Last Modified: Thu, 14 Sep 2017 07:48:15 GMT  
		Size: 393.1 MB (393076452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61fdafb1e81cb6d6ec0b3db34e40c7c34ed83a9f149a74571bafc8a0c29f602`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.1`

```console
$ docker pull nuxeo@sha256:928d7107d2a5d1e0870f0f34d6889baf6efdb8fb5ac1617185f868f04826447e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:a6b0b81a6b5d8f1b8867e15f76e9ad048af455c575a218b76b5b170bbc206e53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1291137608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399472d1160c7046f39b822bfbf16decfe0353c9b7d0af8220d3fc920b48a316`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:36:54 GMT
ARG NUXEO_VERSION=9.1
# Thu, 14 Sep 2017 07:36:54 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip
# Thu, 14 Sep 2017 07:36:54 GMT
ARG NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c
# Thu, 14 Sep 2017 07:36:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:37:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 14 Sep 2017 07:37:35 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Thu, 14 Sep 2017 07:37:35 GMT
COPY file:8720eadd49169cbc4bb58024e5c792902d30f6820078265106084be771269fa5 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 14 Sep 2017 07:37:35 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 14 Sep 2017 07:37:43 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:37:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:37:44 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:37:44 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Thu, 14 Sep 2017 07:37:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:37:45 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:37:45 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:37:45 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:37:45 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31362c70e59abb88d7df76ff54aa355dcce1563c59431a92c85936ccd2fd674a`  
		Last Modified: Thu, 14 Sep 2017 07:46:48 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4db5e7dc99abbac07ec76f7f0fd94022797e1d1a71be1cd711d0d174fb8905`  
		Last Modified: Thu, 14 Sep 2017 07:47:24 GMT  
		Size: 380.3 MB (380325281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a379de67464ddb1e2d1f216eac47693ed7d723f00bf7b9eace18996cb648842`  
		Last Modified: Thu, 14 Sep 2017 07:46:45 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1715b685a06d648a46d79ccc5a22fba08261ad90315f1582ed799c21b1fbca`  
		Last Modified: Thu, 14 Sep 2017 07:46:47 GMT  
		Size: 979.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2f80e53a25ac90641c506ec05259d30de9aa0191e4fad3cb4e14eaebd9a991`  
		Last Modified: Thu, 14 Sep 2017 07:47:22 GMT  
		Size: 380.3 MB (380328164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93926f0bf26f79a1f4188bf6fb84360a9270af1420f29723027e873a910796c9`  
		Last Modified: Thu, 14 Sep 2017 07:46:45 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.2`

```console
$ docker pull nuxeo@sha256:276f5b18dc342e36b2947ef4d329ced0c4091e0920d8aecc684a4a91ddc96988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.2` - linux; amd64

```console
$ docker pull nuxeo@sha256:19f43d3e9bb1d7c4025dfc979a751277df0d146e19def72c1ee70bfce47ed891
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1316637151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287077ea57104da190f1ab1b389360cf05c00fea9508bac6edc2d33b2216ff6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_VERSION=9.2
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_MD5=fe08b58a881391fc74344880f80b7a78
# Thu, 14 Sep 2017 07:39:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:40:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 14 Sep 2017 07:40:51 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Thu, 14 Sep 2017 07:40:51 GMT
COPY file:db23770543718ea1338bd9385928b5cc17b8000b594267b835e7047334330e3a in /etc/nuxeo/nuxeo.conf.template 
# Thu, 14 Sep 2017 07:40:52 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 14 Sep 2017 07:40:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:40:59 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:40:59 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:40:59 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Thu, 14 Sep 2017 07:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:40:59 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:41:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008db1684d73d5b8ac71675aa4dbd1251aac4c23a81f9a45d0f237f01437d3d7`  
		Last Modified: Thu, 14 Sep 2017 07:47:38 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c7700e7f3eb6d1279023243be29a7e5de296e70557afb042697b6fbd6bfa17`  
		Last Modified: Thu, 14 Sep 2017 07:48:19 GMT  
		Size: 393.1 MB (393076459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d3dc2573f8458f73f7fbf46288279214606480a6fdaf562911b7652aa798d2`  
		Last Modified: Thu, 14 Sep 2017 07:47:37 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7797e330d1eb116e4774f3bbe00361d0031ff02427150f3eaa295f81b411360`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fb37ce8bc4cb30fde7f519079479beee8322bdda5cbcaec719a15a642a80a`  
		Last Modified: Thu, 14 Sep 2017 07:48:15 GMT  
		Size: 393.1 MB (393076452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61fdafb1e81cb6d6ec0b3db34e40c7c34ed83a9f149a74571bafc8a0c29f602`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:276f5b18dc342e36b2947ef4d329ced0c4091e0920d8aecc684a4a91ddc96988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:19f43d3e9bb1d7c4025dfc979a751277df0d146e19def72c1ee70bfce47ed891
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1316637151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287077ea57104da190f1ab1b389360cf05c00fea9508bac6edc2d33b2216ff6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_VERSION=9.2
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_MD5=fe08b58a881391fc74344880f80b7a78
# Thu, 14 Sep 2017 07:39:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:40:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 14 Sep 2017 07:40:51 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Thu, 14 Sep 2017 07:40:51 GMT
COPY file:db23770543718ea1338bd9385928b5cc17b8000b594267b835e7047334330e3a in /etc/nuxeo/nuxeo.conf.template 
# Thu, 14 Sep 2017 07:40:52 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 14 Sep 2017 07:40:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:40:59 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:40:59 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:40:59 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Thu, 14 Sep 2017 07:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:40:59 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:41:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008db1684d73d5b8ac71675aa4dbd1251aac4c23a81f9a45d0f237f01437d3d7`  
		Last Modified: Thu, 14 Sep 2017 07:47:38 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c7700e7f3eb6d1279023243be29a7e5de296e70557afb042697b6fbd6bfa17`  
		Last Modified: Thu, 14 Sep 2017 07:48:19 GMT  
		Size: 393.1 MB (393076459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d3dc2573f8458f73f7fbf46288279214606480a6fdaf562911b7652aa798d2`  
		Last Modified: Thu, 14 Sep 2017 07:47:37 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7797e330d1eb116e4774f3bbe00361d0031ff02427150f3eaa295f81b411360`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fb37ce8bc4cb30fde7f519079479beee8322bdda5cbcaec719a15a642a80a`  
		Last Modified: Thu, 14 Sep 2017 07:48:15 GMT  
		Size: 393.1 MB (393076452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61fdafb1e81cb6d6ec0b3db34e40c7c34ed83a9f149a74571bafc8a0c29f602`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:276f5b18dc342e36b2947ef4d329ced0c4091e0920d8aecc684a4a91ddc96988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:19f43d3e9bb1d7c4025dfc979a751277df0d146e19def72c1ee70bfce47ed891
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1316637151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287077ea57104da190f1ab1b389360cf05c00fea9508bac6edc2d33b2216ff6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_VERSION=9.2
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip
# Thu, 14 Sep 2017 07:39:35 GMT
ARG NUXEO_MD5=fe08b58a881391fc74344880f80b7a78
# Thu, 14 Sep 2017 07:39:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:40:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 14 Sep 2017 07:40:51 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Thu, 14 Sep 2017 07:40:51 GMT
COPY file:db23770543718ea1338bd9385928b5cc17b8000b594267b835e7047334330e3a in /etc/nuxeo/nuxeo.conf.template 
# Thu, 14 Sep 2017 07:40:52 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 14 Sep 2017 07:40:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.2/nuxeo-server-9.2-tomcat.zip NUXEO_MD5=fe08b58a881391fc74344880f80b7a78 NUXEO_VERSION=9.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:40:59 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:40:59 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:40:59 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Thu, 14 Sep 2017 07:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:40:59 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:41:00 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:41:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008db1684d73d5b8ac71675aa4dbd1251aac4c23a81f9a45d0f237f01437d3d7`  
		Last Modified: Thu, 14 Sep 2017 07:47:38 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c7700e7f3eb6d1279023243be29a7e5de296e70557afb042697b6fbd6bfa17`  
		Last Modified: Thu, 14 Sep 2017 07:48:19 GMT  
		Size: 393.1 MB (393076459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d3dc2573f8458f73f7fbf46288279214606480a6fdaf562911b7652aa798d2`  
		Last Modified: Thu, 14 Sep 2017 07:47:37 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7797e330d1eb116e4774f3bbe00361d0031ff02427150f3eaa295f81b411360`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fb37ce8bc4cb30fde7f519079479beee8322bdda5cbcaec719a15a642a80a`  
		Last Modified: Thu, 14 Sep 2017 07:48:15 GMT  
		Size: 393.1 MB (393076452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61fdafb1e81cb6d6ec0b3db34e40c7c34ed83a9f149a74571bafc8a0c29f602`  
		Last Modified: Thu, 14 Sep 2017 07:47:36 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:f07baa8defb975b6b0b093a5d6965a86a0722503d4728500d11f29aa780a0870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:24abcb9e9468a98ba7e041818153a5c9c8429d6cdf40df89e0b7c28b9e67128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1069729841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782994db33c322a24465002923de463096dc818906beadcc08ade81221f3048e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_VERSION=8.10
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 14 Sep 2017 07:34:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:34:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:36:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:36:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:36:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:36:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:36:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:36:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:36:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfa34db9cb40cce173ba20b062f8f889aafc13fae34317a8f3b5b3a2059f0c`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1104e60e7b6abda39b76f6624de1f16e6a3739809fbea1113fec4d467c99e8`  
		Last Modified: Thu, 14 Sep 2017 07:45:41 GMT  
		Size: 269.6 MB (269622100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be78b6b067cba9e77b967a059476e2767b2778fb7723dbac6cf003183421e4`  
		Last Modified: Thu, 14 Sep 2017 07:45:43 GMT  
		Size: 269.6 MB (269624392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581413cb4674888ef847ec0265c3ea73043c2b86ca7ac90ef2f09f061fff3fcd`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9a80e5b9dcf800b00af5b6a43324a8a325a4f2ad46f5a96d79377d5abb7f4b`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2014`

```console
$ docker pull nuxeo@sha256:2ca504f5ba16799c2cdeaf4bf7f1b4e20c28def79a75d24ffa1ff1fbcc7f69c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2014` - linux; amd64

```console
$ docker pull nuxeo@sha256:25b1f8fc83eb0ca1cc88f0017e24e60739827e694f1c7102baaf97e71e9edabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **904.9 MB (904876573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f8cd7cee9e36d7c7014740ea2f03d9dbfeb12de39d5cf79ddebd6f1eda8f21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:24 GMT
ARG NUXEO_VERSION=6.0
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Thu, 14 Sep 2017 07:29:25 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Thu, 14 Sep 2017 07:29:27 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:29:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:29:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:29:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:29:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:29:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:29:50 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:29:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:29:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440817833699292a6bc9ae89cd1802d26dc9c82b49dbe15816476923943a61ea`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 4.4 KB (4410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d14c58658a72baea28e6faefa0f9ccb9c247f1580c016d2d1b843f0701be89b`  
		Last Modified: Thu, 14 Sep 2017 07:43:22 GMT  
		Size: 187.2 MB (187195359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000bc0ea891f05fc5b723580b509aba4507c4ef0d03e1f63edf51735ec4ba1da`  
		Last Modified: Thu, 14 Sep 2017 07:43:21 GMT  
		Size: 187.2 MB (187196785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c59d88da2e8a219add29cc1c7d565754080b72d2c1c7d1a2c7544a9e222c61`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e429a745312691607f3fd5e18323536a6759864d2861b184c965c482ccb427a`  
		Last Modified: Thu, 14 Sep 2017 07:43:03 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:a6a3eeb82517d79f643b79eb4adf5bfefb5d42f0fa07c7f6fc447ea5470a7eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:01156529f4d91f90f9940fb96717613bc2ef593b77f276e4ed372f3390fb8ccf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1091402238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db070fa4f229bc852e3d5a2596326b87e904ea9add91bf498b498e5031d0607c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:29:24 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:29:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:29:53 GMT
ARG NUXEO_VERSION=7.10
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 14 Sep 2017 07:29:54 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 14 Sep 2017 07:29:54 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 14 Sep 2017 07:29:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:30:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:30:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:30:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:30:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:30:38 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:30:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:30:39 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:30:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb676181b6ca61740e559ccbf83827bab14c6b458d65c5b48bc4182dd7ddb983`  
		Last Modified: Thu, 14 Sep 2017 07:44:00 GMT  
		Size: 234.7 MB (234743329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeedcfa3df00477c99cedb2033126f120782a38f56d81581788c334a91c6bb02`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85847eedd5fa142c01d647f4a20040c54c6485a1b29e587abbc98378c9e6f6b`  
		Last Modified: Thu, 14 Sep 2017 07:44:50 GMT  
		Size: 280.5 MB (280457921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa27852539fbceb38d2a46d61bfcb1e4a1c0d00e2b795a75735bd2fe9592c7e6`  
		Last Modified: Thu, 14 Sep 2017 07:44:55 GMT  
		Size: 280.5 MB (280459888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffa2797e16aa0d1b8dbebd9ae76d734b09ca2239a64bbdbea8da37512f0c800`  
		Last Modified: Thu, 14 Sep 2017 07:44:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d634ee09d3a5b9eca4e415c646cf857a1a9c56d9d8d4248dc4b618afaaea10f`  
		Last Modified: Thu, 14 Sep 2017 07:44:24 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:f07baa8defb975b6b0b093a5d6965a86a0722503d4728500d11f29aa780a0870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:24abcb9e9468a98ba7e041818153a5c9c8429d6cdf40df89e0b7c28b9e67128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1069729841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782994db33c322a24465002923de463096dc818906beadcc08ade81221f3048e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:28:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 14 Sep 2017 07:34:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:34:25 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_USER=nuxeo
# Thu, 14 Sep 2017 07:34:25 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_VERSION=8.10
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 14 Sep 2017 07:34:26 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 14 Sep 2017 07:34:27 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 14 Sep 2017 07:34:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 14 Sep 2017 07:36:49 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 14 Sep 2017 07:36:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Thu, 14 Sep 2017 07:36:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:36:50 GMT
WORKDIR /opt/nuxeo/server
# Thu, 14 Sep 2017 07:36:50 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Thu, 14 Sep 2017 07:36:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
EXPOSE 8787/tcp
# Thu, 14 Sep 2017 07:36:51 GMT
CMD ["nuxeoctl" "console"]
# Thu, 14 Sep 2017 07:36:51 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082bd18b1cf9c72080a5a20065fc8ff41a3e8f4a9139438383f4f9a42edeeb1`  
		Last Modified: Thu, 14 Sep 2017 07:46:17 GMT  
		Size: 234.7 MB (234742244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfa34db9cb40cce173ba20b062f8f889aafc13fae34317a8f3b5b3a2059f0c`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1104e60e7b6abda39b76f6624de1f16e6a3739809fbea1113fec4d467c99e8`  
		Last Modified: Thu, 14 Sep 2017 07:45:41 GMT  
		Size: 269.6 MB (269622100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be78b6b067cba9e77b967a059476e2767b2778fb7723dbac6cf003183421e4`  
		Last Modified: Thu, 14 Sep 2017 07:45:43 GMT  
		Size: 269.6 MB (269624392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581413cb4674888ef847ec0265c3ea73043c2b86ca7ac90ef2f09f061fff3fcd`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9a80e5b9dcf800b00af5b6a43324a8a325a4f2ad46f5a96d79377d5abb7f4b`  
		Last Modified: Thu, 14 Sep 2017 07:45:16 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
