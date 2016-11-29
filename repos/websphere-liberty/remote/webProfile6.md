## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:498741b3d75a9c8942a1a7cd05ee824cd55fda9d6b52d39cfbbe56a838a66d24
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c0e6ed0b5a9bdbbcc4a019159b6adea9008f7ba79a1f0da9162e6a3f34c495`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:42:53 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Tue, 29 Nov 2016 18:44:08 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92dff5de74182add4d3fb1b026f282082658f037d42a3c3b0c5e167b1dc1a99`  
		Last Modified: Tue, 29 Nov 2016 18:48:37 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63005f4cc1441c3864b772a24c9314ecf8d9e18b83dfc991b7739e53cb3eaca7`  
		Last Modified: Tue, 29 Nov 2016 18:48:42 GMT  
		Size: 54.4 MB (54436692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
