## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:f6deacab3e00c36bf59d8287ff62a6e03b0b8463729a838e529c19bd4f778787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:dd434ec00515ec7e7cc9e2b32f5421fe24317e8b4256a7fab768cdca2e45a346
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.1 MB (962061221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd754192c99a8ea488e7e1d810951cf5d5a9cd92d62175084f4df347697a9a2f`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:20:18 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 19 Sep 2017 00:20:18 GMT
ENV TERM=xterm
# Tue, 19 Sep 2017 00:21:30 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 19 Sep 2017 00:21:33 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 19 Sep 2017 00:21:36 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 19 Sep 2017 00:21:36 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 19 Sep 2017 00:21:39 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 19 Sep 2017 00:21:39 GMT
ENV LANG=en_US.UTF-8
# Tue, 19 Sep 2017 00:21:39 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 19 Sep 2017 00:21:39 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 19 Sep 2017 00:21:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 19 Sep 2017 00:21:40 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 19 Sep 2017 00:21:40 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 19 Sep 2017 00:21:40 GMT
ENV SILVERPEAS_VERSION=6.0-beta1
# Tue, 19 Sep 2017 00:21:40 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 19 Sep 2017 00:21:40 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-beta1 build=1
# Tue, 19 Sep 2017 00:21:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 19 Sep 2017 00:21:48 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 19 Sep 2017 00:21:48 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 19 Sep 2017 00:21:49 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 19 Sep 2017 00:21:49 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 19 Sep 2017 00:25:01 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 19 Sep 2017 00:27:19 GMT
EXPOSE 8000/tcp 9990/tcp
# Tue, 19 Sep 2017 00:27:19 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 19 Sep 2017 00:27:20 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fead1ff7edc75587fa1cdc448e6bbf336317655115be569cf2e0ae838ea18a1`  
		Last Modified: Tue, 19 Sep 2017 00:28:15 GMT  
		Size: 195.4 MB (195398171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83205ff6f52dcf1b46f5cf4dc9b61189019a71404415027b0df46ed3bc8f345`  
		Last Modified: Tue, 19 Sep 2017 00:27:35 GMT  
		Size: 4.0 MB (3994027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b94022a470aca9830fc5ef2c71516429fbafc2a1ba9763f091e220f9a31c9b`  
		Last Modified: Tue, 19 Sep 2017 00:27:37 GMT  
		Size: 7.1 MB (7146614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e01597a872cda8d8224517730137cec22867779f1c8d8e5af0cfb649a00192`  
		Last Modified: Tue, 19 Sep 2017 00:27:34 GMT  
		Size: 845.4 KB (845411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445325fb7c0529cc5c6076f50a619367016fbb16bf4529d371296a51debe32d7`  
		Last Modified: Tue, 19 Sep 2017 00:27:45 GMT  
		Size: 139.2 MB (139211150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5213ba29b23a4943afec8319be10c385d8e07b52fa39742ee4a077dba03205`  
		Last Modified: Tue, 19 Sep 2017 00:27:31 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351e4f28597ec00a1d325390df58e10f718e495039a79b4edc8e665bad9671c6`  
		Last Modified: Tue, 19 Sep 2017 00:27:31 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa917f8957b29c2ed82225860e7b866e252d0e14bae03a2cb11184a650ed3107`  
		Last Modified: Tue, 19 Sep 2017 00:27:32 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a83a3e10d2ed9be371c2ae1b7524d84ba162fb1ded87f12d1a34f72ec40e4e5`  
		Last Modified: Tue, 19 Sep 2017 00:28:11 GMT  
		Size: 567.9 MB (567925516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
