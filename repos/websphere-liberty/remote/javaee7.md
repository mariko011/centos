## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:bf8a417b997c93c061c6ccf7c598a9cf7c52a22f2b41808b8b97958e7467cf2c
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276696302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f7d2a9c915ef246ffb18df8ae797977180a49198e01bf3944452b515e9b512`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:31:26 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 21 Jan 2017 00:31:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 17:20:56 GMT
ENV JAVA_VERSION=1.8.0_sr4fp1
# Mon, 27 Feb 2017 17:21:43 GMT
RUN ESUM="1f8e4b9c0d03457703c17d54d1ac939696fe8d027da57d47a347833d8cafdc90"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 27 Feb 2017 17:21:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 18:27:14 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Feb 2017 18:27:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 18:27:31 GMT
ENV LIBERTY_VERSION=16.0.0_04
# Mon, 27 Feb 2017 18:27:31 GMT
ARG LIBERTY_URL
# Mon, 27 Feb 2017 18:27:32 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Feb 2017 18:27:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Feb 2017 18:27:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Feb 2017 18:27:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Feb 2017 18:27:50 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Feb 2017 18:27:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Feb 2017 18:28:05 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 27 Feb 2017 18:28:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Feb 2017 18:28:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Feb 2017 18:28:07 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Feb 2017 18:30:46 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 27 Feb 2017 18:32:31 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 27 Feb 2017 18:32:32 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 27 Feb 2017 18:32:32 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Feb 2017 18:33:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7bfb3f7b2880a0cb349f17978b056d4c4c0a75d6ddf008d014074681e7fc16`  
		Last Modified: Sat, 21 Jan 2017 00:33:59 GMT  
		Size: 3.1 MB (3078063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036276f2609fb8be56f9530d002a0a6592db0353f205d120faab86c104f8b167`  
		Last Modified: Mon, 27 Feb 2017 17:25:19 GMT  
		Size: 110.3 MB (110300740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e1c67775e4a2f3c26ee97f57e955171446445f653fda3680f8237c9762dd85`  
		Last Modified: Mon, 27 Feb 2017 18:34:31 GMT  
		Size: 266.3 KB (266303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c331ce3b391b306b8edd4c9a3e950cd17e19ee7c0d5b78c64236c73564b28bc7`  
		Last Modified: Mon, 27 Feb 2017 18:34:32 GMT  
		Size: 11.6 MB (11648391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169380ac0095bf3832c990bd0834aee5597d14dc8e2173ce9e686af8879096e`  
		Last Modified: Mon, 27 Feb 2017 18:34:31 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70149be31a31cd791dc0ae12712dd46dabc66eafbde0e371dbcddc12c23fcdea`  
		Last Modified: Mon, 27 Feb 2017 18:34:31 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884c7bdedf5543963992875b0007ed00b0d062ce65caf92a5f22a027297ff41c`  
		Last Modified: Mon, 27 Feb 2017 18:34:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc68200938af91d4f6aae8211f80b28dd2329a8ec926d2a3ce539962ccdbedbc`  
		Last Modified: Mon, 27 Feb 2017 18:35:56 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c805e821422ccf22e2f8ce16104360b04f9819f4085e3b93568c532fa1c67883`  
		Last Modified: Mon, 27 Feb 2017 18:36:05 GMT  
		Size: 62.9 MB (62908524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548f48cf3e2c0e774e465dc7b38fca0395a075a45a6256df676cf10fbd785709`  
		Last Modified: Mon, 27 Feb 2017 18:36:27 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d5d7c3e38dadba33aab157b9f9a04acc0742df0a959bb119bfe447a964a7d`  
		Last Modified: Mon, 27 Feb 2017 18:36:32 GMT  
		Size: 38.2 MB (38181285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
