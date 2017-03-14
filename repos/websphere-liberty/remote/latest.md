## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:014b05b5e4526590d2234e2374bd4e83d50ff639ae6cb80559c6c76907630eed
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276960875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3d4a1562bd1c26c5dd28ac0026f958cf6e49ec94c274a1bc76626e6f002851`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 03:33:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 28 Feb 2017 03:33:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:33:24 GMT
ENV JAVA_VERSION=1.8.0_sr4fp1
# Tue, 28 Feb 2017 03:34:09 GMT
RUN ESUM="1f8e4b9c0d03457703c17d54d1ac939696fe8d027da57d47a347833d8cafdc90"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 28 Feb 2017 03:34:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:31:07 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 01 Mar 2017 01:31:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 14 Mar 2017 21:56:12 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Tue, 14 Mar 2017 21:56:13 GMT
ARG LIBERTY_URL
# Tue, 14 Mar 2017 21:56:13 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 14 Mar 2017 21:56:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 14 Mar 2017 21:56:18 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Mar 2017 21:56:18 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 14 Mar 2017 21:56:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 14 Mar 2017 21:56:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 14 Mar 2017 21:56:25 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 14 Mar 2017 21:56:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 14 Mar 2017 21:56:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 14 Mar 2017 21:56:26 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Mar 2017 21:57:26 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 14 Mar 2017 21:58:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 14 Mar 2017 21:58:08 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 14 Mar 2017 21:58:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 14 Mar 2017 21:58:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac9a09f12f0c34f7502ba7a7d62672c6890f677d856c877609c03a9ff036d47`  
		Last Modified: Thu, 02 Mar 2017 00:49:57 GMT  
		Size: 3.1 MB (3077613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a2aafc88f7155c8e3e834cb64cea112f1acf6075632b48d58253ec549993c`  
		Last Modified: Thu, 02 Mar 2017 00:50:13 GMT  
		Size: 110.3 MB (110300756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410913fe5192c9202847a3c4b3be713da4b06512012b0aed48d4bb46880ab1bb`  
		Last Modified: Thu, 02 Mar 2017 04:45:49 GMT  
		Size: 265.9 KB (265859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3600d42b9fa70333eedd2abac55c808fe3085f3febb4ed192f05548266cd7c9`  
		Last Modified: Tue, 14 Mar 2017 21:59:12 GMT  
		Size: 11.8 MB (11754584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c09215e60de7d97dc6ad6375c72b7174ee3067f5104df9ba5c3f35963cef535`  
		Last Modified: Tue, 14 Mar 2017 21:59:11 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcdf933f71eba03059becb0e7f0d674a1788ed279acee143440c0b689a3245d`  
		Last Modified: Tue, 14 Mar 2017 21:59:11 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe153501fe9aa10eebcf71ed0289bfcdd53eebd98b1daa0a83e7365cabf2037`  
		Last Modified: Tue, 14 Mar 2017 21:59:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288feb17ecd5d6d170dcef29373d9d1383059e1c003f15d42e991d5d381739b3`  
		Last Modified: Tue, 14 Mar 2017 22:00:31 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d43bc3210d5783d5708ffb515acae436f2de3c1baee549ca99a00e51a203aaf`  
		Last Modified: Tue, 14 Mar 2017 22:00:38 GMT  
		Size: 63.0 MB (62951619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f99ccd6ae6becb00c97939af76ba7b29fb2ff59313be7cba62e46276646ee4`  
		Last Modified: Tue, 14 Mar 2017 22:01:03 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99efb9f2770733977599c5519cc97f0eebd2aed4be96c32df79eb090bfffda5a`  
		Last Modified: Tue, 14 Mar 2017 22:01:08 GMT  
		Size: 38.2 MB (38177441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
