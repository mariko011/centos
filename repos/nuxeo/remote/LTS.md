## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:cdc1712666d916353aef75c465f01562386f34272e26c811cd947fd31ea8c59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:5dfc26cd965927d053162c1c393af55e93b098fbdf7efb80c0c12b206939233b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1068659633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b225bd52295df52556dcdbf7aff0f4cb57d9e2ca6fed9ebf0c06c107c0778731`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 09:50:29 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 04 Nov 2017 09:56:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:56:07 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Sat, 04 Nov 2017 09:56:07 GMT
ENV NUXEO_USER=nuxeo
# Sat, 04 Nov 2017 09:56:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 04 Nov 2017 09:56:08 GMT
ARG NUXEO_VERSION=8.10
# Sat, 04 Nov 2017 09:56:08 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Sat, 04 Nov 2017 09:56:08 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Sat, 04 Nov 2017 09:56:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 04 Nov 2017 09:56:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 04 Nov 2017 09:56:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 04 Nov 2017 09:56:46 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Sat, 04 Nov 2017 09:56:46 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 09:56:46 GMT
WORKDIR /opt/nuxeo/server
# Sat, 04 Nov 2017 09:56:47 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Sat, 04 Nov 2017 09:56:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 09:56:47 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 09:56:47 GMT
EXPOSE 8787/tcp
# Sat, 04 Nov 2017 09:56:47 GMT
CMD ["nuxeoctl" "console"]
# Sat, 04 Nov 2017 09:56:48 GMT
USER [1000]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b39a06b8f9b2bcf492d7112ed868d5fb2f2701419eb2166eb094157062f94e`  
		Last Modified: Sat, 04 Nov 2017 10:06:13 GMT  
		Size: 234.8 MB (234758703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148bdb171276858697463668a80115669675c2bf0338d86ea0c59c6a3badd16e`  
		Last Modified: Sat, 04 Nov 2017 10:05:21 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4788e5171201a69dee81126c34d50cfd04038f98fa3f28270b41cc0a88a1a17`  
		Last Modified: Sat, 04 Nov 2017 10:06:16 GMT  
		Size: 269.6 MB (269622095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f7e3a2d4bb85f39c4af6b07888c64b2a30c9bc682e9e58b929780a55a30d71`  
		Last Modified: Sat, 04 Nov 2017 10:06:00 GMT  
		Size: 269.6 MB (269624375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf15638ac108e1039ba46b2ee4ab8c9cd823a506b665a3a2e7aea6e980b87ee`  
		Last Modified: Sat, 04 Nov 2017 10:05:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071ce97e83996a66c151931b4a8b74ba24f3bc4041388baca9dbbfb544be897`  
		Last Modified: Sat, 04 Nov 2017 10:05:21 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
