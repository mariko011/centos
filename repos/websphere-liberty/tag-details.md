<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:beta`](#websphere-libertybeta)

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:428e66d09fb6bdb69acc78acddb3cfa7cd46578164cd3cedbac92c18bbcf5609
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175299201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b834dbad79bb30d9e43221f4db7bf86c30820f42fce41a5486e799c84c4b90`
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

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:20afa63b6c10d6ef4f57e52b8b02c021828f0f7388fe96da87322ce88eb032ee
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229806894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693c10fa1e14891e552441679c12ffee4a8a8a8500388a11f7dc2aee806caa13`
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
# Wed, 05 Oct 2016 19:07:33 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Wed, 05 Oct 2016 19:08:40 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:eedca03288d1f641a763c4003679e6af4839a6b27fffa161aab540a8ab3bcfbd`  
		Last Modified: Wed, 05 Oct 2016 19:08:49 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57733b1f39f0a8332cfec5234bb5cf71edf2669799dc7ab9b4b80b2eba7a91f8`  
		Last Modified: Wed, 05 Oct 2016 19:08:54 GMT  
		Size: 54.5 MB (54512648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:41af077736ea7b5a2090cb0218ad0cdf9b4a7b3aea5b6e7dd566054d4c9b4f9e
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.2 MB (239159495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1b674ea4c065bde1cc5add31e70b82531a6868745b6837bd73c57af7b1cd5b`
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
# Wed, 05 Oct 2016 19:09:04 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Wed, 05 Oct 2016 19:10:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:725d7a9194b535db802e8f3b14911231294b0570aabf45e4cbe591e2c0ceab06`  
		Last Modified: Wed, 05 Oct 2016 19:10:31 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de793a4e26d46be9340c3f5f7bde2a4f9c75554923e91fdb471dc21ea3d222ee`  
		Last Modified: Wed, 05 Oct 2016 19:10:40 GMT  
		Size: 63.9 MB (63865250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:af8a91cb0da0f2561613f51ea477cd1c15e64f24698755177ba6c575c48c749c
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276385419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a67a18e093af7ca364e4cf412c8dd87db6cf656f4b9b86453b2a44f6a76725`
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
# Wed, 05 Oct 2016 19:09:04 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Wed, 05 Oct 2016 19:10:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
# Wed, 05 Oct 2016 19:10:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 05 Oct 2016 19:10:50 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 05 Oct 2016 19:11:34 GMT
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
	-	`sha256:725d7a9194b535db802e8f3b14911231294b0570aabf45e4cbe591e2c0ceab06`  
		Last Modified: Wed, 05 Oct 2016 19:10:31 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de793a4e26d46be9340c3f5f7bde2a4f9c75554923e91fdb471dc21ea3d222ee`  
		Last Modified: Wed, 05 Oct 2016 19:10:40 GMT  
		Size: 63.9 MB (63865250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96786588766558baeeb8bfeb025608486597280fe2a43dcb785005bbe43af89`  
		Last Modified: Wed, 05 Oct 2016 19:11:43 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1fea8ed1531484aa143e629bf0dcf4b9cbdc9cdf03d901df3db837e3f04bf`  
		Last Modified: Wed, 05 Oct 2016 19:11:48 GMT  
		Size: 37.2 MB (37225025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:af8a91cb0da0f2561613f51ea477cd1c15e64f24698755177ba6c575c48c749c
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.4 MB (276385419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a67a18e093af7ca364e4cf412c8dd87db6cf656f4b9b86453b2a44f6a76725`
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
# Wed, 05 Oct 2016 19:09:04 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Wed, 05 Oct 2016 19:10:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
# Wed, 05 Oct 2016 19:10:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 05 Oct 2016 19:10:50 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 05 Oct 2016 19:11:34 GMT
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
	-	`sha256:725d7a9194b535db802e8f3b14911231294b0570aabf45e4cbe591e2c0ceab06`  
		Last Modified: Wed, 05 Oct 2016 19:10:31 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de793a4e26d46be9340c3f5f7bde2a4f9c75554923e91fdb471dc21ea3d222ee`  
		Last Modified: Wed, 05 Oct 2016 19:10:40 GMT  
		Size: 63.9 MB (63865250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96786588766558baeeb8bfeb025608486597280fe2a43dcb785005bbe43af89`  
		Last Modified: Wed, 05 Oct 2016 19:11:43 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1fea8ed1531484aa143e629bf0dcf4b9cbdc9cdf03d901df3db837e3f04bf`  
		Last Modified: Wed, 05 Oct 2016 19:11:48 GMT  
		Size: 37.2 MB (37225025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:577c59a15f3aa5a8a704e31e426253b8aba6ea859f6ad70f1c474a65e98a0dc2
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244606678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4169e482e9c95990b0e0e4807d559c9e639f07dd122fcd3f53e83307b9bea7c7`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 05 Oct 2016 19:05:10 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Wed, 05 Oct 2016 19:05:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 19:05:20 GMT
ENV LIBERTY_VERSION=2016.9.0_1
# Wed, 05 Oct 2016 19:05:29 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Wed, 05 Oct 2016 19:05:29 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Oct 2016 19:05:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 05 Oct 2016 19:05:30 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 05 Oct 2016 19:05:32 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 05 Oct 2016 19:05:32 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Wed, 05 Oct 2016 19:05:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 05 Oct 2016 19:05:33 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:2229bd01d7dd13f673102f3f713cacf2112e75a678e844859e5c085b002e0b5e`  
		Last Modified: Wed, 05 Oct 2016 19:05:41 GMT  
		Size: 265.4 KB (265425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0a0f2121b3710f760edd6d2971f60576975550bda8b3c961884a4020d93fed`  
		Last Modified: Wed, 05 Oct 2016 19:05:49 GMT  
		Size: 80.9 MB (80945338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e16e543971203b9b51c58679b46869a72261a7c34c7e11da3c6ede0263bbc`  
		Last Modified: Wed, 05 Oct 2016 19:05:42 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadd0e05ffdc75b469426712abede131b4deedcce3f07c2c830cdb438ddaa278`  
		Last Modified: Wed, 05 Oct 2016 19:05:40 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3cfc117d982484b389d10b4aefb29779690309b09e8ebdadbab4bb061d92a9`  
		Last Modified: Wed, 05 Oct 2016 19:05:43 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
