## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:f89bb8cb382e3761e2fbd066515d08027201a5e0d104c08bae0eb834df31b6cc
```

-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **886.2 MB (886245733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d89562beedf427dae6352d37f2bd3608854ebe61af3e8d2b972bb753d123f`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 10:56:12 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 23 Jun 2017 10:56:13 GMT
ENV TERM=xterm
# Fri, 23 Jun 2017 10:57:45 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 23 Jun 2017 10:57:50 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 23 Jun 2017 10:57:54 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 23 Jun 2017 10:57:54 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 23 Jun 2017 10:57:58 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 23 Jun 2017 10:57:58 GMT
ENV LANG=en_US.UTF-8
# Fri, 23 Jun 2017 10:57:59 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 23 Jun 2017 10:58:00 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 23 Jun 2017 10:58:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Jun 2017 10:58:01 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 23 Jun 2017 10:58:02 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 23 Jun 2017 10:58:03 GMT
ENV SILVERPEAS_VERSION=6.0-alpha2
# Fri, 23 Jun 2017 10:58:04 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 23 Jun 2017 10:58:05 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-alpha2 build=1
# Fri, 23 Jun 2017 10:58:13 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 23 Jun 2017 10:58:14 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 23 Jun 2017 10:58:15 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 23 Jun 2017 10:58:16 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 23 Jun 2017 10:58:17 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 23 Jun 2017 11:02:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 23 Jun 2017 11:02:03 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 23 Jun 2017 11:02:04 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 23 Jun 2017 11:02:06 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff2b9f6d9e88938a10c2860403a87b2b7bdf619fcf95830798016fb20acb9b4`  
		Last Modified: Sun, 25 Jun 2017 00:29:01 GMT  
		Size: 191.7 MB (191692115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a4f84698aeb7f42734f218d38c72e153cfb77b0706627f33ed2f8453f1dc91`  
		Last Modified: Sun, 25 Jun 2017 00:28:20 GMT  
		Size: 4.0 MB (3994043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f62caff21eba3e22f5cf062b807ae4bd2a9694f1bdd1514ac414b1d813d94d`  
		Last Modified: Sun, 25 Jun 2017 00:28:21 GMT  
		Size: 7.1 MB (7146607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f58f8bb6a3ed7d93502a080cdd1d31ca4706d621edf48b773a9b1c8b20e5c5b`  
		Last Modified: Sun, 25 Jun 2017 00:28:16 GMT  
		Size: 845.3 KB (845345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6070c5a8d841061fc76ce649b87a8a32485cd2b394c4e79e30cc00b85fa6e00`  
		Last Modified: Sun, 25 Jun 2017 00:28:31 GMT  
		Size: 139.2 MB (139199065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e27c26c8dcec24c344b8a1f8e955d68971144d235dc526669f69ee9c1b239a`  
		Last Modified: Sun, 25 Jun 2017 00:28:16 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a0fc6005dd39b1b0b0bc8a2fb7035cb938e91618351008831c8af547293bc`  
		Last Modified: Sun, 25 Jun 2017 00:28:16 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b921c26a63a3b82ea6e13300cc92db5f1e27f99187a833a7acde0e5305c96f6b`  
		Last Modified: Sun, 25 Jun 2017 00:28:16 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7262b8318171d397511b1f5c3341a615ebad4488043a2b032249a06ee5404a3`  
		Last Modified: Sun, 25 Jun 2017 00:29:03 GMT  
		Size: 496.3 MB (496261341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
