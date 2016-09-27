## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:de6ddb6b27e6d9a55174582d7789f6e5ada17428ea830f71f9067b5d3a0ed716
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276390735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d936c932f09909d7c4285654a7e399d5dc2b59e72fd7497c25de5979319c4c4`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:19 GMT
ADD file:cd937b840fff16e04e1f59d56f4424d08544b0bb8ac30d9804d25e28fb15ded3 in / 
# Mon, 26 Sep 2016 21:26:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:23 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:49:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 26 Sep 2016 21:50:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:50:22 GMT
ENV JAVA_VERSION=1.8.0_sr3fp11
# Mon, 26 Sep 2016 21:50:55 GMT
RUN ESUM="a5e0e4e74bd50f6e57117592a97ded215225d92a434582089c9518807812e54a"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 26 Sep 2016 21:50:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 22:40:00 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 26 Sep 2016 22:40:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:40:08 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Mon, 26 Sep 2016 22:40:09 GMT
ARG LIBERTY_URL
# Mon, 26 Sep 2016 22:40:09 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 26 Sep 2016 22:40:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 26 Sep 2016 22:40:12 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Sep 2016 22:40:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 26 Sep 2016 22:40:13 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 26 Sep 2016 22:40:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 26 Sep 2016 22:40:15 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 26 Sep 2016 22:40:15 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 26 Sep 2016 22:40:16 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 26 Sep 2016 22:40:38 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 26 Sep 2016 22:43:18 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 26 Sep 2016 22:44:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
# Mon, 26 Sep 2016 23:25:45 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 26 Sep 2016 23:25:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 26 Sep 2016 23:26:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense defaultServer     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:cad964aed91d2ace084302c587dfc502b5869c5b1d15a1f0e458a45e3cadfaa6`  
		Last Modified: Mon, 26 Sep 2016 21:29:04 GMT  
		Size: 49.8 MB (49830405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a80a22fea63572c387efb1943e6095587f9ea8343af129934d4c81e593374a4`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de990d7957c304603ac78d094f3acf634c1261a3a5a89229fa81d18cdb7945`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e032b8f2cb04e7a2d4efa83eb6837c6b92bd1553cbe46cffa76121091d8301`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ce1741bf604c84258a4c4f1dc98cc35aebdd76c14ed4ffeb6bc3584c1f9b`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c69f05b0ec3223f0ac5861ecc2340abacabcc17b1df81948eb35d1e3806b383`  
		Last Modified: Mon, 26 Sep 2016 21:51:06 GMT  
		Size: 3.1 MB (3075046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d0ff4189d581521df8abb05ac8d82f5485588d3e6b7c8ce0cfe8aa8562b08b`  
		Last Modified: Mon, 26 Sep 2016 21:51:20 GMT  
		Size: 110.5 MB (110491506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905cd8ee6db7f610431b89b975e5cf7e80f81136f92d03a7b612d4a4bcb53bbe`  
		Last Modified: Mon, 26 Sep 2016 22:40:24 GMT  
		Size: 265.4 KB (265423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f110384c486328e9a5ceecda323487d9363ce791079e0e3326f5774d8e651223`  
		Last Modified: Mon, 26 Sep 2016 22:40:27 GMT  
		Size: 11.6 MB (11633494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9417ef42a903334e635c163efb21fe2ce97768b0b7f9e3f6207df197f16c445`  
		Last Modified: Mon, 26 Sep 2016 22:40:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c002d040ef5a2fdd6776ab78a9852c835cc74f4d7bd1e126386026e1bda693d`  
		Last Modified: Mon, 26 Sep 2016 22:40:24 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fd4ca815202172c9f0f099740f945d5791af334dcd515e696cdc995688ff7`  
		Last Modified: Mon, 26 Sep 2016 22:40:24 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488ee879cba27bc9c9fe9d8db522d62e44cb64eb5a82e0582e7446b7e66df9c`  
		Last Modified: Mon, 26 Sep 2016 22:44:52 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c841f795b1c407632e7c9a5c64f2793cc66c6ae1516e17f778626c3126b43f`  
		Last Modified: Mon, 26 Sep 2016 22:44:59 GMT  
		Size: 63.9 MB (63865155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ef92900697a653383a7ad12a4c1ded050d15034e496e82a93922c1a93ab241`  
		Last Modified: Mon, 26 Sep 2016 23:26:48 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a933fde873255eca4e436dad002e11dd05ce5739bbe8760712e81540ab146575`  
		Last Modified: Mon, 26 Sep 2016 23:29:30 GMT  
		Size: 37.2 MB (37224947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
