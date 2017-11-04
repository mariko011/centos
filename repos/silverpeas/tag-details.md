<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0-beta1`](#silverpeas60-beta1)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0-beta1`

```console
$ docker pull silverpeas@sha256:31094453ee069b85653f1a52d4f4affa9b0858eb6b4cfbab0ab135a225ba26ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0-beta1` - linux; amd64

```console
$ docker pull silverpeas@sha256:5d0c32b1aa726dc581aa8e757c84136bade55de545e9fb2eba75479254c804aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.1 MB (962055586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8352870eb70113615c2c2074270ef6692956583f71d36c5b9371bc7a88002f`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:23:03 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 04 Nov 2017 06:23:03 GMT
ENV TERM=xterm
# Sat, 04 Nov 2017 06:24:34 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Sat, 04 Nov 2017 06:24:38 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Sat, 04 Nov 2017 06:24:41 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Sat, 04 Nov 2017 06:24:41 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 04 Nov 2017 06:24:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Sat, 04 Nov 2017 06:24:47 GMT
ENV LANG=en_US.UTF-8
# Sat, 04 Nov 2017 06:24:47 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 04 Nov 2017 06:24:47 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 04 Nov 2017 06:24:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Sat, 04 Nov 2017 06:24:48 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 04 Nov 2017 06:24:48 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 04 Nov 2017 06:24:48 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Sat, 04 Nov 2017 06:24:48 GMT
ENV WILDFLY_VERSION=10.1.0
# Sat, 04 Nov 2017 06:24:49 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Sat, 04 Nov 2017 06:25:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Sat, 04 Nov 2017 06:25:02 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Sat, 04 Nov 2017 06:25:02 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 04 Nov 2017 06:25:02 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Sat, 04 Nov 2017 06:25:03 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Sat, 04 Nov 2017 06:30:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Sat, 04 Nov 2017 06:30:59 GMT
EXPOSE 8000/tcp 9990/tcp
# Sat, 04 Nov 2017 06:31:00 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Sat, 04 Nov 2017 06:31:01 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c7cc70aed924a93a2e271c5fde98f02ca913d2e7d69e910d29ed493b0c923`  
		Last Modified: Sat, 04 Nov 2017 06:31:47 GMT  
		Size: 195.3 MB (195310275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde790617a277e6474e29aa161a046ac7d8748fcb3eb72d8bf196ab2ec12150`  
		Last Modified: Sat, 04 Nov 2017 06:31:17 GMT  
		Size: 4.0 MB (3994029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11319d91aa05527c2d1af8351b1ca7bd7f956ef8e93f0fbfeaaaa965438daa6`  
		Last Modified: Sat, 04 Nov 2017 06:31:16 GMT  
		Size: 7.1 MB (7146620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b93563846218b3147595e0286423f79a9b9a5981ccae860075bba0d00c0d7f`  
		Last Modified: Sat, 04 Nov 2017 06:31:14 GMT  
		Size: 845.4 KB (845408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e422286de76a7a2c4ffd28b0c365737e87449d626f43d6f3dbdcc21b5dfdcd7`  
		Last Modified: Sat, 04 Nov 2017 06:31:26 GMT  
		Size: 139.2 MB (139211147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f1e235f664a5bfe60fb89735706fb86dea3d67da93671d20aa2bcdf229e6af`  
		Last Modified: Sat, 04 Nov 2017 06:31:11 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa315cd977d7901675277e4cdf1342a47b6f4390d1fab0e1dfebc02e0fee7fe`  
		Last Modified: Sat, 04 Nov 2017 06:31:11 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4783a4c9118eff5f93d31d3d7dad9571888965ab6975c26dd45dac57568dd7f`  
		Last Modified: Sat, 04 Nov 2017 06:31:11 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f3016cf1929f4e5d0133ba296f4cd25985d3edc7dfa8dbb084789cc092f03d`  
		Last Modified: Sat, 04 Nov 2017 06:31:48 GMT  
		Size: 567.9 MB (567926893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:c17bb4d76afcf7306f6081675ab11917b7cb5b019360c2c477da9f0a8f1c7858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:d210b0f3b0968d347b5836a098d4ebcdd0075c859198d60636ce45984083a111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.1 MB (962058678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d307aeb65c536accc6d4ccc3d067b2e35fe6cd357efc7bb3fc74d39418e9bab`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:47:08 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 10 Oct 2017 21:47:08 GMT
ENV TERM=xterm
# Tue, 10 Oct 2017 21:48:38 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 10 Oct 2017 21:48:42 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 10 Oct 2017 21:54:18 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 10 Oct 2017 21:54:18 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 10 Oct 2017 21:54:20 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 10 Oct 2017 21:54:20 GMT
ENV LANG=en_US.UTF-8
# Tue, 10 Oct 2017 21:54:21 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 10 Oct 2017 21:54:21 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 10 Oct 2017 21:54:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 10 Oct 2017 21:54:21 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 10 Oct 2017 21:54:21 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 10 Oct 2017 21:54:22 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Tue, 10 Oct 2017 21:54:22 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 10 Oct 2017 21:54:22 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Tue, 10 Oct 2017 21:54:31 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 10 Oct 2017 21:54:31 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 10 Oct 2017 21:54:31 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 10 Oct 2017 21:54:32 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 10 Oct 2017 21:54:32 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 10 Oct 2017 21:58:04 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 10 Oct 2017 22:00:46 GMT
EXPOSE 8000/tcp 9990/tcp
# Tue, 10 Oct 2017 22:00:47 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 10 Oct 2017 22:00:47 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9887a0b68c6a900844849e4f8bff23d352a880b1fc293123f1bb125facee`  
		Last Modified: Tue, 10 Oct 2017 22:01:55 GMT  
		Size: 195.3 MB (195312017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384c3c47297a26d12e74e3bd1ab28c84ac600b32de3b198d6f142622082a9295`  
		Last Modified: Tue, 10 Oct 2017 22:01:15 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b18cf094250cddde05f9ae30cfb3340ebaee7ef089e1d0c74c7c076fa5bc0a`  
		Last Modified: Tue, 10 Oct 2017 22:01:14 GMT  
		Size: 7.1 MB (7146613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297bbd93a48435253969fe6e5f107bd2337758dc0ff352b8ce6a52b5cb731926`  
		Last Modified: Tue, 10 Oct 2017 22:01:12 GMT  
		Size: 845.4 KB (845401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1239b84497a77155c63037bc303952ba3e011c0e059ef38d9336da974ac2cf`  
		Last Modified: Tue, 10 Oct 2017 22:01:21 GMT  
		Size: 139.2 MB (139211145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e12a76b1288f28a1449328c19de4b2dbf0cfd4070d997a852974970d24456`  
		Last Modified: Tue, 10 Oct 2017 22:01:10 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d45b473703a4359457dd69498a18775a4b7d3637863486fb070578d4331725c`  
		Last Modified: Tue, 10 Oct 2017 22:01:10 GMT  
		Size: 810.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185974e33a90c1c45413ae06e2610b79103b6e63e795a2d2629cbd94465a550a`  
		Last Modified: Tue, 10 Oct 2017 22:01:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fe8c87c98249b8d864a1631dad90ef6011112855617a909be1b28a4ebc7304`  
		Last Modified: Tue, 10 Oct 2017 22:01:46 GMT  
		Size: 567.9 MB (567928255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
