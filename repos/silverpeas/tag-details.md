<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0-beta1`](#silverpeas60-beta1)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0-beta1`

```console
$ docker pull silverpeas@sha256:94111bcf5f283f4dbe0de91a44fa3fb4f296543cccaa8c84c15258274804fcaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0-beta1` - linux; amd64

```console
$ docker pull silverpeas@sha256:6c93137e5fe4d1cb1a13e2fdac93d67c6c658ec94599404c4a59aba760826aa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.0 MB (961973879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b7488a0df731e0545c997a610e15eac201ef4aa8944d1783eb32098998dbe5`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 00:50:43 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 16 Jan 2018 00:50:43 GMT
ENV TERM=xterm
# Tue, 16 Jan 2018 00:52:22 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 16 Jan 2018 00:54:05 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 16 Jan 2018 00:54:08 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 16 Jan 2018 00:54:08 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 16 Jan 2018 00:54:12 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 16 Jan 2018 00:54:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 16 Jan 2018 00:54:12 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 16 Jan 2018 00:54:12 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 16 Jan 2018 00:54:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 16 Jan 2018 00:54:13 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 16 Jan 2018 00:54:13 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 16 Jan 2018 00:54:13 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Tue, 16 Jan 2018 00:54:13 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 16 Jan 2018 00:54:14 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Tue, 16 Jan 2018 00:54:27 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 16 Jan 2018 00:54:28 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 16 Jan 2018 00:54:28 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 16 Jan 2018 00:54:28 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 16 Jan 2018 00:54:29 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 16 Jan 2018 00:57:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 16 Jan 2018 01:07:02 GMT
EXPOSE 8000/tcp 9990/tcp
# Tue, 16 Jan 2018 01:07:02 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 16 Jan 2018 01:07:03 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b049a44e56aecee8bf710a1b46d1d8a662f282ef097f5d6ddc20fcc816a7ffa8`  
		Last Modified: Tue, 16 Jan 2018 01:09:45 GMT  
		Size: 200.0 MB (200002237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8738886bbe50db8c87f654eb815e0dd0c439fd729b2b39afb8dd55b2e83a46`  
		Last Modified: Tue, 16 Jan 2018 01:09:01 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3250ee1c21766d99ba98d26b0dd675d9470e9155dfd63f8a5c466daf7822f28c`  
		Last Modified: Tue, 16 Jan 2018 01:09:02 GMT  
		Size: 7.1 MB (7146614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c6957c3ffc723ec26c323ad0c9399e4bd08ce3c3ec8fa65f1a445a8902af5`  
		Last Modified: Tue, 16 Jan 2018 01:08:59 GMT  
		Size: 845.4 KB (845400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b12b0f7022ff2e7bfd7cad8ca8dbf518a23a8786c60e644d250792def4ec4b`  
		Last Modified: Tue, 16 Jan 2018 01:09:14 GMT  
		Size: 139.2 MB (139211136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f5bf6d75b597bd907b3b816abd9dcc2141060fc7d08aa78b4c80c2c4c8fb`  
		Last Modified: Tue, 16 Jan 2018 01:08:57 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820e31b90a96658220076c1ab395d09df975bdb2e28c6796442eb04546534c00`  
		Last Modified: Tue, 16 Jan 2018 01:08:58 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13516e767a951b6618331de820dc3d00c72362c4b75031dd8ccd1161c16bf6e0`  
		Last Modified: Tue, 16 Jan 2018 01:08:56 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a252534cfcf58dc3b28638ed87d2e05d907570dfdf80a9c6483f18b213096`  
		Last Modified: Tue, 16 Jan 2018 01:09:43 GMT  
		Size: 567.9 MB (567928023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:cea93c87de644ddaa678199aa6ebebaf13d57c5184fcf8522e2628a2d8ccfbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:7f5adfe10572938b75688b347eedccde19362a839eed2032647331769bdabab1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **959.2 MB (959172200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74f5cecb9d9be1774678bb4ff91e79b13f25346688027fd7b572548d9fd3223`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 22:24:46 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Thu, 14 Dec 2017 22:24:46 GMT
ENV TERM=xterm
# Thu, 14 Dec 2017 22:26:07 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Thu, 14 Dec 2017 22:26:12 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Thu, 14 Dec 2017 22:26:15 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Thu, 14 Dec 2017 22:26:15 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Thu, 14 Dec 2017 22:26:18 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Thu, 14 Dec 2017 22:26:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 14 Dec 2017 22:26:18 GMT
ENV LANGUAGE=en_US.UTF-8
# Thu, 14 Dec 2017 22:26:19 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 14 Dec 2017 22:26:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 14 Dec 2017 22:26:19 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Thu, 14 Dec 2017 22:26:19 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 14 Dec 2017 22:26:20 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Thu, 14 Dec 2017 22:26:20 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 14 Dec 2017 22:26:20 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Thu, 14 Dec 2017 22:26:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 14 Dec 2017 22:26:35 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Thu, 14 Dec 2017 22:26:35 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 14 Dec 2017 22:26:36 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Thu, 14 Dec 2017 22:26:36 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 14 Dec 2017 22:30:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 14 Dec 2017 22:34:45 GMT
EXPOSE 8000/tcp 9990/tcp
# Thu, 14 Dec 2017 22:34:45 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 14 Dec 2017 22:34:46 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230f535ac9164d7ed66137a3976724a9ca6af1a853b7ac51361ea473ece8f1b3`  
		Last Modified: Thu, 14 Dec 2017 22:35:51 GMT  
		Size: 197.3 MB (197299387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0b4814b2ce5d41b160a03ce0b9f4e20922886383275588bbb71c3208218a71`  
		Last Modified: Thu, 14 Dec 2017 22:35:09 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc615158c2af069a3bacaf53653c8ae996c97a26f5f87326d6575cf296974ec8`  
		Last Modified: Thu, 14 Dec 2017 22:35:10 GMT  
		Size: 7.1 MB (7146611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8758ffb0a9a4682e428eb78fc50789cd66fc78263902a4f0d6fbeea401959b3d`  
		Last Modified: Thu, 14 Dec 2017 22:35:08 GMT  
		Size: 845.4 KB (845417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c89e0050def509f5aa6806c092de2f4540c132d201685a82b5757190ebb795`  
		Last Modified: Thu, 14 Dec 2017 22:35:22 GMT  
		Size: 139.2 MB (139211142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f5ede4e9d168b5aacbfda9492a774a4fbd150eac57836f4627266c9cff23d7`  
		Last Modified: Thu, 14 Dec 2017 22:35:05 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee66fbbd6bd1f461a7deef120cd9e6a8b3501c63cf063ccddbbc06e93483725a`  
		Last Modified: Thu, 14 Dec 2017 22:35:05 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea2a186c65f18d6493ee6afdc155271c3deed5626e39b56c9fa0c1093663525`  
		Last Modified: Thu, 14 Dec 2017 22:35:05 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a778a8f3289d67470c1404a7625b1a4314b211b30dff70e10f148cadfda6774`  
		Last Modified: Thu, 14 Dec 2017 22:35:42 GMT  
		Size: 567.9 MB (567928320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
