## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:532c89f5353cec8adf0c2431068a07a7d7ca96044251a4aa62512fb505c12fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:2194776645fc44525d46d913107dfef36733d99a619e518618509bf5b4286afc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1069507409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36923e71efc0d7459e480d91465c2a8cf6d6782cf6988c1f82bf3f21a4762aa3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:58:15 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 13 Sep 2017 05:01:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 05:01:27 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 13 Sep 2017 05:01:27 GMT
ENV NUXEO_USER=nuxeo
# Wed, 13 Sep 2017 05:01:28 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 13 Sep 2017 05:01:28 GMT
ARG NUXEO_VERSION=8.10
# Wed, 13 Sep 2017 05:01:28 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 13 Sep 2017 05:01:28 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 13 Sep 2017 05:01:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 13 Sep 2017 05:01:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 13 Sep 2017 05:02:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 13 Sep 2017 05:02:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 13 Sep 2017 05:02:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 05:02:06 GMT
WORKDIR /opt/nuxeo/server
# Wed, 13 Sep 2017 05:02:07 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 13 Sep 2017 05:02:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 05:02:07 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 05:02:07 GMT
EXPOSE 8787/tcp
# Wed, 13 Sep 2017 05:02:07 GMT
CMD ["nuxeoctl" "console"]
# Wed, 13 Sep 2017 05:02:07 GMT
USER [1000]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bb606eb900abc641b9e7796ae24893ef492df906fad28c337c6cf6d7e12af8`  
		Last Modified: Wed, 13 Sep 2017 05:12:28 GMT  
		Size: 234.7 MB (234742839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ae121f761b61e67a88cc9ca9b0c53f6725a306dcbf7f02c6bb5838beb0da61`  
		Last Modified: Wed, 13 Sep 2017 05:11:31 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e5a3bdabf4cf078f53bb45ce2e8836163c76b5b869a013d483e582fe152315`  
		Last Modified: Wed, 13 Sep 2017 05:14:01 GMT  
		Size: 269.6 MB (269622094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37534aea39b22d8476fb59441dc53cc8c42b5d6f5e42fb19f9734139e1a6068d`  
		Last Modified: Wed, 13 Sep 2017 05:11:52 GMT  
		Size: 269.6 MB (269624387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752a2ba2547563da2b3b627ef7909a633c67f8ce12b846097ded5efc815dad8a`  
		Last Modified: Wed, 13 Sep 2017 05:11:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da2ebb48d9297985dd995bf284b88b0e25fe4d0a9d144682bf833a51ef2982e`  
		Last Modified: Wed, 13 Sep 2017 05:11:28 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
