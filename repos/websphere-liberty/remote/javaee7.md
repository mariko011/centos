## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:2495e2ed7a7edd8f63bdb57be922cc2dd395a6c87dcb6341c45873211dfc8e37
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274778089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bb3918ceff0e5dffa1e290b1655efd2971135913b7b50c542cf2c62c51f768`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:56 GMT
ADD file:96db69a1ba6c80f604d07b14bcbf84445624ad3eb5b0471eddabf09cb7925366 in / 
# Thu, 20 Jul 2017 17:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 19:59:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 20 Jul 2017 19:59:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 19:59:38 GMT
ENV JAVA_VERSION=1.8.0_sr4fp7
# Thu, 20 Jul 2017 20:00:12 GMT
RUN ESUM="431f94a4f51c1f53d5a6e62fce3c65f16e955acd772554d17e0d864416d7ba05"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 20 Jul 2017 20:00:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jul 2017 21:42:30 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 20 Jul 2017 21:42:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 21:42:40 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Thu, 20 Jul 2017 21:42:40 GMT
ARG LIBERTY_URL
# Thu, 20 Jul 2017 21:42:41 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 20 Jul 2017 21:42:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 20 Jul 2017 21:42:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jul 2017 21:42:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 20 Jul 2017 21:42:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 20 Jul 2017 21:42:47 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 20 Jul 2017 21:42:48 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Thu, 20 Jul 2017 21:42:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Jul 2017 21:42:49 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 20 Jul 2017 21:42:57 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 20 Jul 2017 21:44:14 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Thu, 20 Jul 2017 21:44:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 20 Jul 2017 21:45:06 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Thu, 20 Jul 2017 21:45:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 20 Jul 2017 21:45:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:e0a742c2abfd5e2a6f8ed15b1c78e873cf9559b96a04204daf6de5df01e3124c`  
		Last Modified: Tue, 11 Jul 2017 06:39:41 GMT  
		Size: 47.1 MB (47146626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486cb8339a27635fa93dc47aa0c689326a0a7cce388966d16daf8d265436cf7f`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0d824617ad8a5d1163a5b2084814665dd83156317ad06ccf14deb517a053`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a5649a30e3f318ce5d7e4dbcbbeb6c0938c4cbae4d4a641fe910562ff4978`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672363445ad2c734e29221a6b47f4e614b5adc8a3cdca3364f62db2ed2bdff0c`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523732d45995bd7a1c0829224b3537591de2266067520323f290d73a09d1c293`  
		Last Modified: Thu, 20 Jul 2017 20:03:07 GMT  
		Size: 3.1 MB (3070068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c7da86159e074a7db3df6561a8586231d7f847246049e8c97ad019d040b07`  
		Last Modified: Thu, 20 Jul 2017 20:03:18 GMT  
		Size: 110.9 MB (110885826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d1f5bf6f94bd22af2945ef63b93eab5d09c895a17b63d562ffc814eeb32103`  
		Last Modified: Thu, 20 Jul 2017 21:46:24 GMT  
		Size: 269.7 KB (269656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfeaf2468bf208dd83ab6db53e1203c3716f19a5c50bc48f4753cbb8536fc3d`  
		Last Modified: Thu, 20 Jul 2017 21:46:25 GMT  
		Size: 11.5 MB (11515383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d15efe6225bb0cf9620017bdab4cfa201e0d55665d0bcbb514ca68df9e71577`  
		Last Modified: Thu, 20 Jul 2017 21:46:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e45f8afa411f5f7fcb72049837f9fbd33367dcfbbc42ed16dadf1ad3466c1b`  
		Last Modified: Thu, 20 Jul 2017 21:46:24 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3715b8266078b99ebe10faca3c3a2a2b0975e60097ced37b6b2f67a465ad316`  
		Last Modified: Thu, 20 Jul 2017 21:46:24 GMT  
		Size: 461.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfc8c5e6386313458794b9c963b198c08cc0937d39e80e4d000d3cf8e22647`  
		Last Modified: Thu, 20 Jul 2017 21:47:17 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57c8a97407157d0dcd417797547bf8b38355523ceaa01e6af20ba7b42c4a7b`  
		Last Modified: Thu, 20 Jul 2017 21:47:23 GMT  
		Size: 63.5 MB (63536029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3a1e4ef2b23ea9e918d50b9858722ce2677cee6f0d3710be631b5b68d2eaa`  
		Last Modified: Thu, 20 Jul 2017 21:47:38 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49dbd85bffd557fbdba553d192039921ac35b6b7f5dc41e88a17887c59d9014`  
		Last Modified: Thu, 20 Jul 2017 21:47:42 GMT  
		Size: 38.3 MB (38349515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
