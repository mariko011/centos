## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:33a6ad705967c47d62f8a79f2890ffeee267b7b3a06937e515bd9be7f942ee10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:e4e963b1a1988db5d75e13a7ba7d6fcf6db7bb927250c29020d93a5568ac2d74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.1 MB (962054697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8ab0705015bdf323d99357c9fbb762fadd1b8fac88a5ac39b290e09a7554ce`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 18:57:00 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 04 Nov 2017 18:57:01 GMT
ENV TERM=xterm
# Sat, 04 Nov 2017 19:02:01 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Sat, 04 Nov 2017 19:03:57 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Sat, 04 Nov 2017 19:04:02 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Sat, 04 Nov 2017 19:04:02 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 04 Nov 2017 19:04:06 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Sat, 04 Nov 2017 19:04:06 GMT
ENV LANG=en_US.UTF-8
# Sat, 04 Nov 2017 19:04:06 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 04 Nov 2017 19:04:06 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 04 Nov 2017 19:04:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Sat, 04 Nov 2017 19:04:06 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 04 Nov 2017 19:04:07 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 04 Nov 2017 19:04:07 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Sat, 04 Nov 2017 19:04:07 GMT
ENV WILDFLY_VERSION=10.1.0
# Sat, 04 Nov 2017 19:04:07 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Sat, 04 Nov 2017 19:04:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Sat, 04 Nov 2017 19:04:17 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Sat, 04 Nov 2017 19:04:17 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 04 Nov 2017 19:04:17 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Sat, 04 Nov 2017 19:04:17 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Sat, 04 Nov 2017 19:07:53 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Sat, 04 Nov 2017 19:07:54 GMT
EXPOSE 8000/tcp 9990/tcp
# Sat, 04 Nov 2017 19:07:54 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Sat, 04 Nov 2017 19:07:55 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5e92b3ded01469531c00d52d3bb11b6f590642c143d54077ab99fba058a35f`  
		Last Modified: Sat, 04 Nov 2017 19:10:57 GMT  
		Size: 195.3 MB (195310148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffebd0ac5372a3c7170dd7186b79c76cd1cfdb5e89b8fd025d0675022c1c2fb`  
		Last Modified: Sat, 04 Nov 2017 19:10:21 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd4a9b4ad8820b33bb7ee4952373bc584b59331783602ce433bd31d3fea5af4`  
		Last Modified: Sat, 04 Nov 2017 19:10:21 GMT  
		Size: 7.1 MB (7146615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25eaf300187a4735049ff8e94a238805c02a812e74784c9597a5435edb8257e`  
		Last Modified: Sat, 04 Nov 2017 19:10:18 GMT  
		Size: 845.4 KB (845423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1309443554871f8ac2b4bea21411e635744e8405d093ec3d6adcb77a6b90b6`  
		Last Modified: Sat, 04 Nov 2017 19:10:30 GMT  
		Size: 139.2 MB (139211145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178414e8ff8bdb9eb84b413732f261c494fb035e6997ee7ea852f9221439e9f3`  
		Last Modified: Sat, 04 Nov 2017 19:10:16 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f136318afcccddf24f5a6dd15a303af8b354f13255b684c64f84b29423fbb50a`  
		Last Modified: Sat, 04 Nov 2017 19:10:16 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa6ab7de9778d02eb9db34d6309066061067be298f81839e043fb6a43c1488`  
		Last Modified: Sat, 04 Nov 2017 19:10:16 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400edf6b1f4feec10db5c604bca8fe864e4acda582a1cbe68366c14efb10922a`  
		Last Modified: Sat, 04 Nov 2017 19:10:58 GMT  
		Size: 567.9 MB (567926122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
