<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0-beta1`](#silverpeas60-beta1)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0-beta1`

```console
$ docker pull silverpeas@sha256:6b020c1da842c0447589a7bf772e6b8ace1a7ffc6835e3d79a003def3522f8ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0-beta1` - linux; amd64

```console
$ docker pull silverpeas@sha256:bf0a9c0c299515d33077870604f46f959a9c034926188b06fe23807dbe33e1d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.2 MB (962234197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8eb3db1170559398307a1d01f18c7fc8b9a9d49e43f471e83fea705ca7558bc`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:03:15 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 17 Nov 2017 23:03:16 GMT
ENV TERM=xterm
# Fri, 17 Nov 2017 23:07:34 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 17 Nov 2017 23:08:12 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 17 Nov 2017 23:08:15 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 17 Nov 2017 23:08:15 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 17 Nov 2017 23:08:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 17 Nov 2017 23:08:18 GMT
ENV LANG=en_US.UTF-8
# Fri, 17 Nov 2017 23:08:19 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 17 Nov 2017 23:08:19 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 17 Nov 2017 23:08:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 17 Nov 2017 23:08:19 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 17 Nov 2017 23:08:19 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 17 Nov 2017 23:08:19 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Fri, 17 Nov 2017 23:08:20 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 17 Nov 2017 23:08:20 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Fri, 17 Nov 2017 23:08:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 17 Nov 2017 23:08:32 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 17 Nov 2017 23:08:33 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 17 Nov 2017 23:08:33 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 17 Nov 2017 23:08:33 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 17 Nov 2017 23:12:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 17 Nov 2017 23:13:42 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 17 Nov 2017 23:13:42 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 17 Nov 2017 23:13:43 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5c9c5002a4eb2430faaa7340b9e4a589c7169f387f76f3e40d41cc180787b9`  
		Last Modified: Fri, 17 Nov 2017 23:14:56 GMT  
		Size: 195.3 MB (195344809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ba9e0fe78b911ab5a25e6ecd5fd09503d6b1ed0f1d64a9430f657a062d7b49`  
		Last Modified: Fri, 17 Nov 2017 23:14:07 GMT  
		Size: 4.0 MB (3994026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc20f9b9de5d1a2001fe837a99b15125b7521a657213f1eb2097bd1ccc279d47`  
		Last Modified: Fri, 17 Nov 2017 23:14:06 GMT  
		Size: 7.1 MB (7146616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3919f864de500268e103b95d37ec1ed97a30010df8f6f67478ad3db8f724da4`  
		Last Modified: Fri, 17 Nov 2017 23:14:03 GMT  
		Size: 845.4 KB (845416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddaa7ba7fd14b902e1b335c81baefcbc6d36891ab1ab811dd91f62399e6580f`  
		Last Modified: Fri, 17 Nov 2017 23:15:58 GMT  
		Size: 139.2 MB (139211145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc156ebae8e102dbd6e7b46bf6617f2db7cc8a9c3aab66e5e585aaa6fd61a9f`  
		Last Modified: Fri, 17 Nov 2017 23:14:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aec7f4df9941efbfa51da8028466f20779cc3914136a57265852d109566f88`  
		Last Modified: Fri, 17 Nov 2017 23:14:00 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c298e5e5e50aa632c2d1e8de6722065febac3b8d7bc03f2046a6b9436630c4a7`  
		Last Modified: Fri, 17 Nov 2017 23:14:00 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d3b7ed6998718d66c4840232a4d7cfc4a55f34603ae255156bbd2b879bd3eb`  
		Last Modified: Fri, 17 Nov 2017 23:18:26 GMT  
		Size: 567.9 MB (567928386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
