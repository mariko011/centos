## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:de275630a5d56429fa44499ea22cdbd89396275fa8a1711b60886114452eb6df
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:microProfile` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200849767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76eaa4135993dbeac5340600df059996ee48a7cf62da3c5a4adea7fdb9ebd004`
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
# Wed, 05 Oct 2016 17:46:05 GMT
ENV JAVA_VERSION=1.8.0_sr3fp12
# Wed, 05 Oct 2016 17:46:40 GMT
RUN ESUM="5248e1ece213033ffc3f80702736a1bb2ec2fcfc8e82f4c38322e8c5cf42bfe8"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 05 Oct 2016 17:46:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Oct 2016 19:05:59 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 05 Oct 2016 19:06:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 19:06:06 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Wed, 05 Oct 2016 19:06:07 GMT
ARG LIBERTY_URL
# Wed, 05 Oct 2016 19:06:07 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 05 Oct 2016 19:06:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 05 Oct 2016 19:06:10 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Oct 2016 19:06:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 05 Oct 2016 19:06:11 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 05 Oct 2016 19:06:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 05 Oct 2016 19:06:12 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 05 Oct 2016 19:06:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 05 Oct 2016 19:06:12 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Wed, 05 Oct 2016 19:06:32 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 05 Oct 2016 19:06:33 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Wed, 05 Oct 2016 19:07:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:89001a2ea5f691f76e40883123efbb6a292516b344dfa121044a372012028d82`  
		Last Modified: Wed, 05 Oct 2016 17:49:52 GMT  
		Size: 110.5 MB (110485995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f366a7c6e582ffd65e215b78d0becb0aebbf9259123d329745ed65675f516c8`  
		Last Modified: Wed, 05 Oct 2016 19:06:22 GMT  
		Size: 265.4 KB (265431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd23602d6cd7cbb2fffc9142e8a563e64bfed8eb291d90c2a6cf11123330d492`  
		Last Modified: Wed, 05 Oct 2016 19:06:23 GMT  
		Size: 11.6 MB (11633507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92fad80261260d17792965aad95e70f4c43c148ff2d2e3d26f5b341c04db262`  
		Last Modified: Wed, 05 Oct 2016 19:06:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035b5baddfee16cd52d48ca7c68aa77ca42bf43ae62c8e05e595184514caea61`  
		Last Modified: Wed, 05 Oct 2016 19:06:21 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da92fea2955a55dbd94825c3f7258113b0478b9472d2ac76f5e7f349c0021453`  
		Last Modified: Wed, 05 Oct 2016 19:06:21 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6ab909124e918aa1de716699230f64f44335af213692ac76ff1ec6ed77f450`  
		Last Modified: Wed, 05 Oct 2016 19:07:19 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce2570f677763bf9a09eaecc66fc375074a52b63fbf54f3fd3149a9b497769`  
		Last Modified: Wed, 05 Oct 2016 19:07:24 GMT  
		Size: 25.6 MB (25555520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
