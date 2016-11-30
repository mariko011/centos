## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:5a88d13b4a86d0acaefc0dd672dca547c94ca87dd2b3a83a26b1c3fe90854acd
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277666918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de14fd114cce4364762182e2564b22888ffcfb3d93e274f1a095170c8541625`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 23:41:31 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 29 Nov 2016 23:41:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 23:41:45 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 23:42:19 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 23:42:19 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Nov 2016 18:43:01 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 30 Nov 2016 18:43:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:43:09 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Wed, 30 Nov 2016 18:43:10 GMT
ARG LIBERTY_URL
# Wed, 30 Nov 2016 18:43:10 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 30 Nov 2016 18:43:13 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 30 Nov 2016 18:43:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Nov 2016 18:43:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 30 Nov 2016 18:43:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 30 Nov 2016 18:43:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 30 Nov 2016 18:43:17 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 30 Nov 2016 18:43:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 30 Nov 2016 18:43:17 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Wed, 30 Nov 2016 18:43:18 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 30 Nov 2016 18:45:06 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Wed, 30 Nov 2016 18:46:26 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 30 Nov 2016 18:46:26 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 30 Nov 2016 18:46:27 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 30 Nov 2016 18:47:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f632a5d0b83c22105c0ae0b55ee75240b121ec9e32153b94a40d16700fa991e1`  
		Last Modified: Tue, 29 Nov 2016 23:43:41 GMT  
		Size: 3.1 MB (3077423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2189db443c7e960c663f1d5edcc75f876f83204fc3aaab8e0bfd68850b2af4e`  
		Last Modified: Tue, 29 Nov 2016 23:43:56 GMT  
		Size: 110.2 MB (110244544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0284021f04b235d1838655cc5bb8091658530225171c4b380ef6ee11ef6473`  
		Last Modified: Wed, 30 Nov 2016 18:48:00 GMT  
		Size: 265.9 KB (265865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299669b300b1ee2608873c5bc32dc320a640281dffd54269ed9cdd01af823ddf`  
		Last Modified: Wed, 30 Nov 2016 18:48:01 GMT  
		Size: 11.6 MB (11633496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffff633292ce816c2f9ba962898c272651a2a5640a9f637003daf51518c3ff44`  
		Last Modified: Wed, 30 Nov 2016 18:47:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c066f826a7e91beb9d7440f52ac6103cf61deb906fac6a05ca85ea125f8b416`  
		Last Modified: Wed, 30 Nov 2016 18:47:58 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287e19f19a58269ccf37932fdfa7dc153ba1a3fd6a24c5205425b2ba8d9dc651`  
		Last Modified: Wed, 30 Nov 2016 18:47:58 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c9abeb2b9e646a7484a8841047d809d624c1c0241fc685825164839fe3d297`  
		Last Modified: Wed, 30 Nov 2016 18:49:15 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e006a0f2770cc3f1ff4897068ea247d631efd53114196f0c763b4d1e80668`  
		Last Modified: Wed, 30 Nov 2016 18:49:22 GMT  
		Size: 64.2 MB (64186875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec488eb4675efe501c200647bdf3b683545d15243fdfd8d266349f4f539fe9d`  
		Last Modified: Wed, 30 Nov 2016 18:49:45 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b03ebaeecffb05375d88df8f70b1e6bf67701be0d1829d4c318fa2a9a75d0`  
		Last Modified: Wed, 30 Nov 2016 18:49:48 GMT  
		Size: 38.2 MB (38157182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
