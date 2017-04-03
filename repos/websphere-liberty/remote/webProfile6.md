## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:0b1615bdc0feac0bd1695b324241a2582744087509f0662bcc54476d20d674d8
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230247285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e4ff8b1e85d22dc94a8685d651ab5563d15451e1755f238241d1149a4585c0`
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
# Mon, 03 Apr 2017 17:13:24 GMT
ENV JAVA_VERSION=1.8.0_sr4fp2
# Mon, 03 Apr 2017 17:14:01 GMT
RUN ESUM="9f319ba22cda861a7ccf39ec1e9877a73dc2f1a2a77822f441ffb5b1d9867f16"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 03 Apr 2017 17:14:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 03 Apr 2017 18:19:54 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 03 Apr 2017 18:20:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Apr 2017 18:20:04 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 03 Apr 2017 18:20:04 GMT
ARG LIBERTY_URL
# Mon, 03 Apr 2017 18:20:04 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 03 Apr 2017 18:20:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 03 Apr 2017 18:20:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 03 Apr 2017 18:20:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 03 Apr 2017 18:20:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 03 Apr 2017 18:20:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 03 Apr 2017 18:20:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 03 Apr 2017 18:20:11 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 03 Apr 2017 18:20:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 03 Apr 2017 18:20:12 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 03 Apr 2017 18:20:35 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Mon, 03 Apr 2017 18:21:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:0c58966e536bc7c2cd54b0349580ba47172c4c5fc1c5d9c1f27a4b5d79051536`  
		Last Modified: Mon, 03 Apr 2017 17:16:59 GMT  
		Size: 110.2 MB (110180258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f70bc4a0fa85bfcef830b7a9b353d05dd5929c4e0df206836b0eaff172b3b3`  
		Last Modified: Mon, 03 Apr 2017 18:23:24 GMT  
		Size: 265.9 KB (265862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cb2b6d84d56b5d77593b9bd8094b6534f521d72fc96683018fa70d607340bb`  
		Last Modified: Mon, 03 Apr 2017 18:23:26 GMT  
		Size: 11.8 MB (11754579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e0b7fbc207354e449318a0ed25bc5f417897f5589c41edcd2565e83f778814`  
		Last Modified: Mon, 03 Apr 2017 18:23:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56501ab0b555f1c609ab06f1a8366ae5940fbf81377ed6a599806e02753bf48`  
		Last Modified: Mon, 03 Apr 2017 18:23:24 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc1565051cc8fbf1aef9f70023dcb35a833804b038af3a64bd2dacf26ac372`  
		Last Modified: Mon, 03 Apr 2017 18:23:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8240b2c72ffcbc01fa23a9b85710c9c6332b01467b18ef625944a8792abee837`  
		Last Modified: Mon, 03 Apr 2017 18:24:18 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c148b4151744df179644ace4f05c1362efb19294452dcc4fdf2999f644e158`  
		Last Modified: Mon, 03 Apr 2017 18:24:25 GMT  
		Size: 54.5 MB (54536876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
