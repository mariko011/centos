## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:d27cf340cabdd242692d82830f172dc0f23ee139c8e95caad0e06a71d38d0fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:7d47445230c8b658d1d32c7633adf999c334d5fbe309175a6969676e47d9acff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 GB (1487700406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0caa3d3dbe3296087f964793b3d0eb707bc51923cb663571a3a667b55053d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 20:57:15 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 04 Nov 2017 21:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 21:01:56 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Sat, 04 Nov 2017 21:01:56 GMT
ENV NUXEO_USER=nuxeo
# Sat, 04 Nov 2017 21:01:56 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Dec 2017 01:58:35 GMT
ARG NUXEO_VERSION=9.3
# Wed, 06 Dec 2017 01:58:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.3/nuxeo-server-9.3-tomcat.zip
# Wed, 06 Dec 2017 01:58:36 GMT
ARG NUXEO_MD5=b86a61fefb5611bc512e0944e9ac47a5
# Wed, 06 Dec 2017 01:58:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.3/nuxeo-server-9.3-tomcat.zip NUXEO_MD5=b86a61fefb5611bc512e0944e9ac47a5 NUXEO_VERSION=9.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Dec 2017 01:59:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.3/nuxeo-server-9.3-tomcat.zip NUXEO_MD5=b86a61fefb5611bc512e0944e9ac47a5 NUXEO_VERSION=9.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Dec 2017 01:59:32 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Dec 2017 01:59:33 GMT
COPY file:0d7bd75e99864ddc3406e15d91d817ec3f9411e0bb1f536f4ef3f7195d4c863c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Dec 2017 01:59:33 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Dec 2017 01:59:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.3/nuxeo-server-9.3-tomcat.zip NUXEO_MD5=b86a61fefb5611bc512e0944e9ac47a5 NUXEO_VERSION=9.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Dec 2017 01:59:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Dec 2017 01:59:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Dec 2017 01:59:45 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Dec 2017 01:59:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Dec 2017 01:59:45 GMT
EXPOSE 8080/tcp
# Wed, 06 Dec 2017 01:59:45 GMT
EXPOSE 8787/tcp
# Wed, 06 Dec 2017 01:59:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Dec 2017 01:59:46 GMT
USER [1000]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4187e4894be2327c1822ad3ed536cd52cddfc9ff3ca289949d556c9cdba496d`  
		Last Modified: Sat, 04 Nov 2017 21:09:33 GMT  
		Size: 234.8 MB (234758256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e260a20f1cda515d0b2f4a239f87e71e16f89347ede4a88414f75aa224f7ef`  
		Last Modified: Wed, 06 Dec 2017 02:00:25 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8720fa702e15690b1f77b41c8fce3d5b0dd907295b873145faa540d51c78c895`  
		Last Modified: Wed, 06 Dec 2017 02:02:16 GMT  
		Size: 479.1 MB (479142444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a1c598f0859ad9c1858605b2b6e2036c359e77c3872dce80b873cf2bd63896`  
		Last Modified: Wed, 06 Dec 2017 02:00:24 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddcccd33a77d1fd434bc5b671505edc87e6ed1740c1db387d86fa7c4ca73c3c`  
		Last Modified: Wed, 06 Dec 2017 02:00:24 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b8d2ef4a271c867d860e652d11618a2252e9549cfeb5cd68ff4debde995320`  
		Last Modified: Wed, 06 Dec 2017 02:01:03 GMT  
		Size: 479.1 MB (479144124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643ebfbbf283093624db0143ab5d0f90d4a7148049a380ccb8ab1b0838c95894`  
		Last Modified: Wed, 06 Dec 2017 02:00:23 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
