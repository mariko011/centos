<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0-alpha2`](#silverpeas60-alpha2)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0-alpha2`

```console
$ docker pull silverpeas@sha256:6abee31033de4ff22712e074b83dac6420191ff9fde274ab65f90a122b380901
```

-	Platforms:
	-	linux; amd64

### `silverpeas:6.0-alpha2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **892.8 MB (892750736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5b54ab4f6e66747d711be761190a8eccd9849ceb899ab03cc96ea73f3f2680`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 00:30:34 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 20 Jan 2017 00:30:34 GMT
ENV TERM=xterm
# Fri, 20 Jan 2017 00:32:15 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 20 Jan 2017 00:32:19 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 20 Jan 2017 00:32:22 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 20 Jan 2017 00:32:22 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:25 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 20 Jan 2017 00:32:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 20 Jan 2017 00:32:26 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 20 Jan 2017 00:32:27 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 20 Jan 2017 00:32:27 GMT
ENV SILVERPEAS_VERSION=6.0-alpha2
# Fri, 20 Jan 2017 00:32:27 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 20 Jan 2017 00:32:28 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-alpha2 build=1
# Fri, 20 Jan 2017 00:32:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 20 Jan 2017 00:32:45 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 20 Jan 2017 00:32:45 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 20 Jan 2017 00:32:46 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 20 Jan 2017 00:32:46 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 20 Jan 2017 00:35:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 20 Jan 2017 00:35:57 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 20 Jan 2017 00:35:58 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 20 Jan 2017 00:35:59 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822e7f11a46577e3193c749990d368c49b5e1edcce9d66aff1dce1ae751b6c52`  
		Last Modified: Fri, 20 Jan 2017 00:37:12 GMT  
		Size: 195.8 MB (195768058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd9f7e4f8816515282540a3dba70c01f4499b2e644ca3f8acd1a674f4041592`  
		Last Modified: Fri, 20 Jan 2017 00:36:20 GMT  
		Size: 3.9 MB (3896789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d9dbbd514ae9660ffd41f57ff731c352d023c36171e70ab045e04f56dd022f`  
		Last Modified: Fri, 20 Jan 2017 00:36:20 GMT  
		Size: 7.0 MB (7037710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b413d178980050bc464e2c96193f4644f82c9ab7259d16a1e8d5b540570fb61`  
		Last Modified: Fri, 20 Jan 2017 00:36:18 GMT  
		Size: 673.4 KB (673438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddbc71a5acbc998b67ffb23058be23daeb07ce2b1a76316145e1356ce4b0de8`  
		Last Modified: Fri, 20 Jan 2017 00:36:31 GMT  
		Size: 139.1 MB (139127940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf1835b126825342f6ac3414cd1816546c28a5c27746ffb6839d37d52ae4654`  
		Last Modified: Fri, 20 Jan 2017 00:36:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c8b6a96d17e500b012f7d1c94cdf2b7373b6c65d3ce4806f76a3a5d4f8181`  
		Last Modified: Fri, 20 Jan 2017 00:36:15 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e310b870faf5c9222cea1220f6586fab9cc52ca899b244b38988370e19d687a`  
		Last Modified: Fri, 20 Jan 2017 00:36:14 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8c4b272294167453acb22d4c917f0239f59b98d2fa54602b6a1bb36581965f`  
		Last Modified: Fri, 20 Jan 2017 00:36:54 GMT  
		Size: 496.0 MB (496025379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:6abee31033de4ff22712e074b83dac6420191ff9fde274ab65f90a122b380901
```

-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **892.8 MB (892750736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5b54ab4f6e66747d711be761190a8eccd9849ceb899ab03cc96ea73f3f2680`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 00:30:34 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 20 Jan 2017 00:30:34 GMT
ENV TERM=xterm
# Fri, 20 Jan 2017 00:32:15 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 20 Jan 2017 00:32:19 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 20 Jan 2017 00:32:22 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 20 Jan 2017 00:32:22 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:25 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 20 Jan 2017 00:32:25 GMT
ENV LANG=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 20 Jan 2017 00:32:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 20 Jan 2017 00:32:26 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 20 Jan 2017 00:32:27 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 20 Jan 2017 00:32:27 GMT
ENV SILVERPEAS_VERSION=6.0-alpha2
# Fri, 20 Jan 2017 00:32:27 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 20 Jan 2017 00:32:28 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0-alpha2 build=1
# Fri, 20 Jan 2017 00:32:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 20 Jan 2017 00:32:45 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 20 Jan 2017 00:32:45 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 20 Jan 2017 00:32:46 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 20 Jan 2017 00:32:46 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 20 Jan 2017 00:35:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 20 Jan 2017 00:35:57 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 20 Jan 2017 00:35:58 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 20 Jan 2017 00:35:59 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822e7f11a46577e3193c749990d368c49b5e1edcce9d66aff1dce1ae751b6c52`  
		Last Modified: Fri, 20 Jan 2017 00:37:12 GMT  
		Size: 195.8 MB (195768058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd9f7e4f8816515282540a3dba70c01f4499b2e644ca3f8acd1a674f4041592`  
		Last Modified: Fri, 20 Jan 2017 00:36:20 GMT  
		Size: 3.9 MB (3896789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d9dbbd514ae9660ffd41f57ff731c352d023c36171e70ab045e04f56dd022f`  
		Last Modified: Fri, 20 Jan 2017 00:36:20 GMT  
		Size: 7.0 MB (7037710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b413d178980050bc464e2c96193f4644f82c9ab7259d16a1e8d5b540570fb61`  
		Last Modified: Fri, 20 Jan 2017 00:36:18 GMT  
		Size: 673.4 KB (673438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddbc71a5acbc998b67ffb23058be23daeb07ce2b1a76316145e1356ce4b0de8`  
		Last Modified: Fri, 20 Jan 2017 00:36:31 GMT  
		Size: 139.1 MB (139127940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf1835b126825342f6ac3414cd1816546c28a5c27746ffb6839d37d52ae4654`  
		Last Modified: Fri, 20 Jan 2017 00:36:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c8b6a96d17e500b012f7d1c94cdf2b7373b6c65d3ce4806f76a3a5d4f8181`  
		Last Modified: Fri, 20 Jan 2017 00:36:15 GMT  
		Size: 796.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e310b870faf5c9222cea1220f6586fab9cc52ca899b244b38988370e19d687a`  
		Last Modified: Fri, 20 Jan 2017 00:36:14 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8c4b272294167453acb22d4c917f0239f59b98d2fa54602b6a1bb36581965f`  
		Last Modified: Fri, 20 Jan 2017 00:36:54 GMT  
		Size: 496.0 MB (496025379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
