<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:beta`](#websphere-libertybeta)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:c3f69e60bf68bca752f7531f43a41220bee15134d9c917df76c0637084a830a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:662d139e558def06bc23821a8f0f0dc255cfcbd271703bef9496d049fed6cd73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263490286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd66d14644305cc640947ac4807c510c85ea8206dc207329f3ead03d01d95a3`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:10:39 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Mon, 27 Nov 2017 19:10:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:10:46 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Mon, 27 Nov 2017 19:10:54 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Mon, 27 Nov 2017 19:10:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:10:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:10:55 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:10:56 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:10:57 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Mon, 27 Nov 2017 19:10:57 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:10:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbb1f4c7b9c36910c0c8f70c038c47b007daf0088935ecae8c69605cf586197`  
		Last Modified: Mon, 27 Nov 2017 19:12:32 GMT  
		Size: 422.2 KB (422184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac4bfc73611eaf6d37a86ccfa6c50ed543225e661c1bb0340f6756d18de998a`  
		Last Modified: Mon, 27 Nov 2017 19:12:41 GMT  
		Size: 88.0 MB (88046090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc2c361e08d0ce0580440f8302e62b58a2949028c1f206ed15c462378eeb2ba`  
		Last Modified: Mon, 27 Nov 2017 19:12:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ac81cc62484831e388c2d71f287a1fa29906c35ae11e68379ab60144971f7e`  
		Last Modified: Mon, 27 Nov 2017 19:12:32 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa80078afa147ba811890b1bef4cf0b320724e7459bd0c18718aa3236c0a322b`  
		Last Modified: Mon, 27 Nov 2017 19:12:32 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:78c0f4edef6a3fe04c1626d7ebd8fb5629f9b0e3f71e91ea5bc0a2ae32b3ef1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252721230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448973eccd6b8be2a4ddbfaff9c95ee1e7f68047842eedb4e8d00693382bae83`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:08:52 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Sat, 18 Nov 2017 00:09:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:09:00 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Sat, 18 Nov 2017 00:09:09 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 18 Nov 2017 00:09:10 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:09:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:09:11 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:09:12 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:09:12 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 18 Nov 2017 00:09:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:09:12 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e75f341b48ec4f669cd5b99f71c4d11fb05010be375ee6bd106322d8cc64359`  
		Last Modified: Sat, 18 Nov 2017 00:11:17 GMT  
		Size: 421.2 KB (421167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc155c53b58e8eb1531ae1d9138725a65fb33a64f2123d645ae62fd4cf57ffa`  
		Last Modified: Sat, 18 Nov 2017 00:11:26 GMT  
		Size: 88.0 MB (88046084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f156f3844412b6f4d41de785b5c39414225f64d2395c2b05f8b2ad0d66bb9687`  
		Last Modified: Sat, 18 Nov 2017 00:11:17 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78902eed9b3237b687067c3f75238f8d3176def6940766fbc4bacb73097aba3a`  
		Last Modified: Sat, 18 Nov 2017 00:11:17 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e21526bfb365c5cae90e3105f7bc62664dd4cf9c19354f18f59cccba1b422be`  
		Last Modified: Sat, 18 Nov 2017 00:11:17 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:356ad95589fc156999287a52a1d6cc57c0b4280cbcbfe4f080d8acde6b331d50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279546982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83590cb22a2199568be8ca27b05a32ffe67adddde720b29b7783e82ff2e7558a`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:22:43 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Fri, 17 Nov 2017 23:23:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:23:16 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Fri, 17 Nov 2017 23:24:37 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 17 Nov 2017 23:24:41 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:24:46 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:24:56 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:25:02 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:25:05 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 17 Nov 2017 23:25:07 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:25:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6d1994e7517af6231e35a998a530a22ad693f9c6b15413364a6ffe2fcd0c79`  
		Last Modified: Fri, 17 Nov 2017 23:27:13 GMT  
		Size: 453.4 KB (453422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6d0707b024d19d4db237679e461558769d7b7709689b3923b445c7f4f9af5c`  
		Last Modified: Fri, 17 Nov 2017 23:27:22 GMT  
		Size: 88.0 MB (88046105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6f1a3eb69c3cc1224460346426e6c878ec0f1c1d29b88023eebd9d988e56ae`  
		Last Modified: Fri, 17 Nov 2017 23:27:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3df809ee2820440322a5d9a7e859c02e877ccda5d0498f78de508cf227b8f`  
		Last Modified: Fri, 17 Nov 2017 23:27:13 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4278b31a284fa9a3532ff48adbd32411ea4f2ed7c609a302c9ae36abbfa652ab`  
		Last Modified: Fri, 17 Nov 2017 23:27:14 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:13ee77c24bad66e10ce643d6f0730a5cd5443a50f9091cd92755751a6f7776bc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261445750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246153621eeed2a7d04b2676676972aa9293c0393262f743d12184511983603b`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:10:29 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Tue, 28 Nov 2017 12:10:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:10:35 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Tue, 28 Nov 2017 12:10:48 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 28 Nov 2017 12:10:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:10:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:10:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:10:50 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:10:50 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 28 Nov 2017 12:10:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:10:50 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b94f5849b9626b562b7429c1ede58709a239a3424a45c5ee429f8dcc89955e`  
		Last Modified: Tue, 28 Nov 2017 12:12:04 GMT  
		Size: 427.9 KB (427856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e77de71d6e60510e6f24f58d39f4213cf5dd043c4a6317ff161c3ab3ab50e4`  
		Last Modified: Tue, 28 Nov 2017 12:12:10 GMT  
		Size: 88.0 MB (88046110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fff7ff57c1f2abaeb351e27089bbb93d9a0ef222aff2ae7c5d37050a66733a1`  
		Last Modified: Tue, 28 Nov 2017 12:12:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8756afc86e0ef6e47b21d6193cf34aa52c2c8a5ef16db5a40b64bdf341893e9b`  
		Last Modified: Tue, 28 Nov 2017 12:12:03 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7489ea1bde2ecc82d260497673f297d7068bf428af24c0eddd94b5a1b149ee8`  
		Last Modified: Tue, 28 Nov 2017 12:12:03 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:28c3a9255efd6251eab16d2a03986f4a322562882a373630eff9371bd4805ab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:dca89d40e64a7148aa823617e70480be48c8d183267b01230d7ec5e14b34dbcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287999445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f4a971e06855de0133fcd6c89396eb0d44106b81af1b4a478e7262e4e5b834`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Nov 2017 19:06:30 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:08:43 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 27 Nov 2017 19:09:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 27 Nov 2017 19:09:55 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 27 Nov 2017 19:09:56 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:10:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c199c4c9fe2daacaf5c669dc24aadaf5fe0ec37aad37bf40548a35794d5c686`  
		Last Modified: Mon, 27 Nov 2017 19:11:55 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246ef672b9c96bdddfd250732bdb18fa36777a3decf48cc91e6fb230eeb9956`  
		Last Modified: Mon, 27 Nov 2017 19:11:59 GMT  
		Size: 68.7 MB (68661903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bca28e95809584b47621565a211e66689b4883a57f4fc5e795137fdde7c0352`  
		Last Modified: Mon, 27 Nov 2017 19:12:12 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49cf7d359d218de38e820fa6305f480c69b715bbc8107b80af9b745233916aa`  
		Last Modified: Mon, 27 Nov 2017 19:12:15 GMT  
		Size: 32.2 MB (32236325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:48af2298f29d1182be20b048885e26e8a72cf42e14c0bbe63d837de24b8fa358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277231089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0aefc25d35c13ee94d30e1d7c754fd9dd4d8e21b62d7669bf248dc1edd5f16`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 18 Nov 2017 00:04:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:06:49 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 18 Nov 2017 00:07:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 18 Nov 2017 00:08:05 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 18 Nov 2017 00:08:05 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:08:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0397ed7479403adb9a3c9937c25fb9950cd6de27c6aad23234f8e788c29c4ec`  
		Last Modified: Sat, 18 Nov 2017 00:10:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcacc8b584851cbbf2e0b5222eb138b3d4ebfcb50e3498304de6001b77f98535`  
		Last Modified: Sat, 18 Nov 2017 00:10:32 GMT  
		Size: 68.7 MB (68662552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973cf97fc7d40a505954e72dea8dbbd826140013347c3faf18623d47dbdef1c`  
		Last Modified: Sat, 18 Nov 2017 00:10:49 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e091890e6d29ee09c7e89b85f276ed87d9712ad811d77747e4297bc90522968c`  
		Last Modified: Sat, 18 Nov 2017 00:10:53 GMT  
		Size: 32.2 MB (32236408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:ad6f1e67009c4c594ea595c723b03d2a26694f5e04959717d1e2aca70a7e6c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304075397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b21b1dca676e7fe0240cdd27f0bcaf29f89ea7df37e0cc209c517c0d938896a`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:17:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 17 Nov 2017 23:20:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 17 Nov 2017 23:20:47 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 17 Nov 2017 23:20:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:22:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6781909fb3077ade76b7dc229c530812ccc9ede3b7402ab31e488a8e3263d0`  
		Last Modified: Fri, 17 Nov 2017 23:26:32 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b47ee329844ece5543011223599be447643faaad2a2a4c2e73547276a71539`  
		Last Modified: Fri, 17 Nov 2017 23:26:41 GMT  
		Size: 68.7 MB (68674497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d422326025cc2133fb8e096f86bb05ab10ff1e1383f5c5dcb667bb2b4d16235`  
		Last Modified: Fri, 17 Nov 2017 23:26:52 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ddcf549f6be32dcfbce7c61888d594f27fc871b627bbe9878ddad48816214`  
		Last Modified: Fri, 17 Nov 2017 23:26:57 GMT  
		Size: 32.2 MB (32242999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d0f9fd01d2947bc2ed747f570e821a710156d81b5bb14e2ff48264cd9be9404e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (285955554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f20c837c776dc2ffca7e2ae1e2317b1c3d928cddbb619a113a35cc70b329dda`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 28 Nov 2017 12:05:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:07:57 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 28 Nov 2017 12:09:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 28 Nov 2017 12:09:31 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 28 Nov 2017 12:09:31 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:10:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cacb3f334929c29ce0c36c03a743f97755065b4c2fad30206efa99dfc601ebf`  
		Last Modified: Tue, 28 Nov 2017 12:11:36 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeaa562df9a1d028a9a095c60c9fe81b20fa12d58ecdedc6a8f3534c46533a55`  
		Last Modified: Tue, 28 Nov 2017 12:11:41 GMT  
		Size: 68.7 MB (68662387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d3b629d5683c2703c508b3b02d5cde6dcb0decf96d0b71f0212a3776db40f1`  
		Last Modified: Tue, 28 Nov 2017 12:11:49 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d8fd46abf5811ff5d5968c8a030dccdc903313e847bb4fab6868ead9bb226`  
		Last Modified: Tue, 28 Nov 2017 12:11:51 GMT  
		Size: 32.2 MB (32236530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:0b749f56d6eedf68a1a01b3c03c80b29021d0c0ddde32ca4f82ed06252403303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:f8776bc9080ebe99df8caf82d4b9d10ed81b227db3a81e779e192d6e5258958e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187099744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d831f0f26bbbef2f12e0f3ada965c9b10456765ad7cd826921b7d15ef6e002b0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:852756369de09dbc50e0c87e1ef3341fea70e8788ba9f5c75d574bb0e7e5ec22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e798302e20bdbb5e38a6e90bd99ca04e8a9b7cfa922bb64d3866dd2b6e0f5e9f`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:446f4ed13b7e87a3b29d9e6ebfbb5a647bc5775f05c0edbb6d8a9df5bb9448e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203156422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2312374758c53bec594c2d6b9191a63043bdd730f5f9e41e424ce7f50bd118fc`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:fb786fa75bdf1fbd6cf3e6c7984bc6bd3ee96b197c8e60f70387f36ca340ec75
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185055164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e8be1a865ea76015d3c3b91eca5e5420f64be581e09599950d706b0ec31e09`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:28c3a9255efd6251eab16d2a03986f4a322562882a373630eff9371bd4805ab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:dca89d40e64a7148aa823617e70480be48c8d183267b01230d7ec5e14b34dbcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287999445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f4a971e06855de0133fcd6c89396eb0d44106b81af1b4a478e7262e4e5b834`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Nov 2017 19:06:30 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:08:43 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 27 Nov 2017 19:09:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 27 Nov 2017 19:09:55 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 27 Nov 2017 19:09:56 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:10:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c199c4c9fe2daacaf5c669dc24aadaf5fe0ec37aad37bf40548a35794d5c686`  
		Last Modified: Mon, 27 Nov 2017 19:11:55 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246ef672b9c96bdddfd250732bdb18fa36777a3decf48cc91e6fb230eeb9956`  
		Last Modified: Mon, 27 Nov 2017 19:11:59 GMT  
		Size: 68.7 MB (68661903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bca28e95809584b47621565a211e66689b4883a57f4fc5e795137fdde7c0352`  
		Last Modified: Mon, 27 Nov 2017 19:12:12 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49cf7d359d218de38e820fa6305f480c69b715bbc8107b80af9b745233916aa`  
		Last Modified: Mon, 27 Nov 2017 19:12:15 GMT  
		Size: 32.2 MB (32236325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:48af2298f29d1182be20b048885e26e8a72cf42e14c0bbe63d837de24b8fa358
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277231089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0aefc25d35c13ee94d30e1d7c754fd9dd4d8e21b62d7669bf248dc1edd5f16`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 18 Nov 2017 00:04:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:06:49 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 18 Nov 2017 00:07:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 18 Nov 2017 00:08:05 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 18 Nov 2017 00:08:05 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:08:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0397ed7479403adb9a3c9937c25fb9950cd6de27c6aad23234f8e788c29c4ec`  
		Last Modified: Sat, 18 Nov 2017 00:10:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcacc8b584851cbbf2e0b5222eb138b3d4ebfcb50e3498304de6001b77f98535`  
		Last Modified: Sat, 18 Nov 2017 00:10:32 GMT  
		Size: 68.7 MB (68662552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973cf97fc7d40a505954e72dea8dbbd826140013347c3faf18623d47dbdef1c`  
		Last Modified: Sat, 18 Nov 2017 00:10:49 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e091890e6d29ee09c7e89b85f276ed87d9712ad811d77747e4297bc90522968c`  
		Last Modified: Sat, 18 Nov 2017 00:10:53 GMT  
		Size: 32.2 MB (32236408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:ad6f1e67009c4c594ea595c723b03d2a26694f5e04959717d1e2aca70a7e6c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304075397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b21b1dca676e7fe0240cdd27f0bcaf29f89ea7df37e0cc209c517c0d938896a`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:17:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 17 Nov 2017 23:20:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 17 Nov 2017 23:20:47 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 17 Nov 2017 23:20:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:22:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6781909fb3077ade76b7dc229c530812ccc9ede3b7402ab31e488a8e3263d0`  
		Last Modified: Fri, 17 Nov 2017 23:26:32 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b47ee329844ece5543011223599be447643faaad2a2a4c2e73547276a71539`  
		Last Modified: Fri, 17 Nov 2017 23:26:41 GMT  
		Size: 68.7 MB (68674497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d422326025cc2133fb8e096f86bb05ab10ff1e1383f5c5dcb667bb2b4d16235`  
		Last Modified: Fri, 17 Nov 2017 23:26:52 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ddcf549f6be32dcfbce7c61888d594f27fc871b627bbe9878ddad48816214`  
		Last Modified: Fri, 17 Nov 2017 23:26:57 GMT  
		Size: 32.2 MB (32242999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d0f9fd01d2947bc2ed747f570e821a710156d81b5bb14e2ff48264cd9be9404e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (285955554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f20c837c776dc2ffca7e2ae1e2317b1c3d928cddbb619a113a35cc70b329dda`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 28 Nov 2017 12:05:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:07:57 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 28 Nov 2017 12:09:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 28 Nov 2017 12:09:31 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 28 Nov 2017 12:09:31 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:10:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cacb3f334929c29ce0c36c03a743f97755065b4c2fad30206efa99dfc601ebf`  
		Last Modified: Tue, 28 Nov 2017 12:11:36 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeaa562df9a1d028a9a095c60c9fe81b20fa12d58ecdedc6a8f3534c46533a55`  
		Last Modified: Tue, 28 Nov 2017 12:11:41 GMT  
		Size: 68.7 MB (68662387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d3b629d5683c2703c508b3b02d5cde6dcb0decf96d0b71f0212a3776db40f1`  
		Last Modified: Tue, 28 Nov 2017 12:11:49 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d8fd46abf5811ff5d5968c8a030dccdc903313e847bb4fab6868ead9bb226`  
		Last Modified: Tue, 28 Nov 2017 12:11:51 GMT  
		Size: 32.2 MB (32236530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:ce744da1554483016c8f4a38af07af8ec9fca8ac1501edd3d2d75744a439fc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:aa20e12b58eff41e2ccab4c3f9a3d280d331875f62c1cecb71be04254bf13643
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221829208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b38727003485396f6389b1c57207b74778ddcc91fb765a08acdbd8081a8ced`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Nov 2017 19:06:30 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:06:30 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Mon, 27 Nov 2017 19:07:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946b69febe0f72b940707e5ba6533eb9443041426dc0a125d33d302c1b8a6f00`  
		Last Modified: Mon, 27 Nov 2017 19:11:24 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853a814397f8dbc84c21a4bf068934ea0fc5a7f5f96485c5d0a43172acac869c`  
		Last Modified: Mon, 27 Nov 2017 19:11:26 GMT  
		Size: 34.7 MB (34728910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:3c06a313f10413a4a82cb8622969a4ffca0d6090ed71e2e6f6313b6a3496423d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211060133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106357782e5d9ec663473e04f96b5b6b5a6a9d1d705a4ba42b1c54f94c123992`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 18 Nov 2017 00:04:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:04:35 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Sat, 18 Nov 2017 00:05:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22845a5e506386f3130c863f9008c052a7d803ddf45e32416d21bf33bd4cc863`  
		Last Modified: Sat, 18 Nov 2017 00:09:46 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e260890a6eb1bdba1c150af66f0d60c18b6c739c6b8c71bf3848ed5c4d70364`  
		Last Modified: Sat, 18 Nov 2017 00:09:49 GMT  
		Size: 34.7 MB (34728924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:3bd590568be106117480cea39143720e83ac728b72dd147c1fa3ab6070d91af0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237892593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ef445e623f0f437262a6c0a071bb08154f34c4b3d5b9468cdd738469383d5d`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:13:15 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Fri, 17 Nov 2017 23:15:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab75318ee191ac0ac0145840cf92f81970bf4e1d9c8ab79abe0a38e9adcd139`  
		Last Modified: Fri, 17 Nov 2017 23:25:43 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f5c5fe752f9b5ba90e266ca734fdddc1e3e15d29ed9e8cfec68fcff37f130`  
		Last Modified: Fri, 17 Nov 2017 23:25:48 GMT  
		Size: 34.7 MB (34735616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0a50cc4e13193ae71a77a964f55db513d2cead7775192f9d289f64e6c052a113
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219784764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250baef6ccb37ac9ecaffa06d3361ad34e24d39983e85b6d3f02dcc1d07e4af1`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 28 Nov 2017 12:05:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:05:15 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Tue, 28 Nov 2017 12:06:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a0c5d3c29c94ee069227f0c8e765083600c2f7fabee83cb3b7b9a635de834`  
		Last Modified: Tue, 28 Nov 2017 12:11:09 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aeed24aef06b38c6308396436cc8927820e5bc87ba58350f393305ebc92e65`  
		Last Modified: Tue, 28 Nov 2017 12:11:13 GMT  
		Size: 34.7 MB (34729050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:c5a13df2579170473f3f7304c8434491a6d7250bd9d581d2b31c83fa8b682ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile6` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:f8f75132de5b6b38359ab6bb0fbda055565ef13b71f176b7488556e5e5b1dcfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247434006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6741950d88a0f94fa3d5deed83330acaa1d774708288035beb124b3ce10c90`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Nov 2017 19:06:30 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:07:35 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Mon, 27 Nov 2017 19:08:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351938ebe299a25d97dccb6dcd3536dd78dc0d3de48ccbd6fcd59f63d0770cfa`  
		Last Modified: Mon, 27 Nov 2017 19:11:37 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4c49eb124987b4d9614874ab64648043dbf5098c2215b1aebd90a981d1889`  
		Last Modified: Mon, 27 Nov 2017 19:11:43 GMT  
		Size: 60.3 MB (60333703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; 386

```console
$ docker pull websphere-liberty@sha256:2746459fe0bd6060fa3835c4f558ec3977cd08efc6c087d391b314eac759f15b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236665001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b793a04ed48ab1682d972e0cf0b769d0f932e53d6587c8d9ffea6c4991f06d51`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 18 Nov 2017 00:04:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:05:44 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Sat, 18 Nov 2017 00:06:38 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313e33c4b98d725539b33aff98df60a272a8834acaaca21894337b41e06d066`  
		Last Modified: Sat, 18 Nov 2017 00:10:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a8a6420cfd48e14f24d4e6b117d6365a7feff1e2c843faf9a3034923af65b2`  
		Last Modified: Sat, 18 Nov 2017 00:10:11 GMT  
		Size: 60.3 MB (60333791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:062288c7b5a38ad271f31f6e3ec0ae9d9aaadfd267c35956e1ab8cf2a367adb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263497174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901c778a66dc43e2405508aa52174e4dcf7023c7a63c06622563fda885e58b06`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:15:24 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Fri, 17 Nov 2017 23:17:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a136c446cd7d41224e85743536b552e4f84feba64619ea61c79f814dc4a8fcb0`  
		Last Modified: Fri, 17 Nov 2017 23:25:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9670b61a07db556d20375db2820cc1bd5184517b2b69a57284307aa071d63b`  
		Last Modified: Fri, 17 Nov 2017 23:26:06 GMT  
		Size: 60.3 MB (60340195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:19c9e716881d447541276f2e286f1035d8ad703bb3dc36db3dec581d0fe491ee
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245389623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78e5196f8367e33f441cc19a571cf26cfceba51bc7a49f740bdde9e08287e97`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 28 Nov 2017 12:05:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:06:41 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Tue, 28 Nov 2017 12:07:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e89a3bfa3009e6f0167fc469055231893a51366963fba54f3746da88ae1ea4`  
		Last Modified: Tue, 28 Nov 2017 12:11:20 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d37862bd48f2de62b68b3ba508eaaf73b9da6c4e329a70f5b9ba261b18aee65`  
		Last Modified: Tue, 28 Nov 2017 12:11:25 GMT  
		Size: 60.3 MB (60333902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:51d72059f1dfce0efba18a06c9320331e16d84e38e58cf08a992b8ab3cd19854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:a133cbe412decef8836139a5a9f683ad5b4c374e50a0ac0a73c4997c35b11fc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255762199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85480f90c1087eb4a30a83f5da5f09f7d0ef94f1d8e535c9a698142f48c39daf`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:54:43 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:54:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 18:38:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Mon, 27 Nov 2017 18:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 27 Nov 2017 18:39:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 27 Nov 2017 19:06:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 27 Nov 2017 19:06:11 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Mon, 27 Nov 2017 19:06:11 GMT
ARG LIBERTY_URL
# Mon, 27 Nov 2017 19:06:12 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 27 Nov 2017 19:06:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 27 Nov 2017 19:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Nov 2017 19:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Mon, 27 Nov 2017 19:06:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 27 Nov 2017 19:06:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 27 Nov 2017 19:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 27 Nov 2017 19:06:20 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Mon, 27 Nov 2017 19:06:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 27 Nov 2017 19:06:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 27 Nov 2017 19:06:30 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 27 Nov 2017 19:08:43 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 27 Nov 2017 19:09:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4611cbdb35a7b7d50ab0e09e97c9a5bdc6ce1656a01fb0765f61439677adc`  
		Last Modified: Fri, 17 Nov 2017 23:02:27 GMT  
		Size: 3.0 MB (3020945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f199282eb136d914d245217f928a299f71c4bd7cfef844bc3b8f13ab44e54af`  
		Last Modified: Mon, 27 Nov 2017 18:43:06 GMT  
		Size: 124.2 MB (124236072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77570b4b2971c968b08f1866884a7da7f9a5238598a89ac5f0cc5ff9d3bdb266`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 422.2 KB (422199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1386cc99e51f59b3d124bda962c85f85db2621596405a8d2bc7efccd0286697`  
		Last Modified: Mon, 27 Nov 2017 19:11:11 GMT  
		Size: 11.7 MB (11656679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0d19930a633f407f816b67ef4bc2e85536ea028e451b5290ee1a32d6b65ce0`  
		Last Modified: Mon, 27 Nov 2017 19:11:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cfb6cb767a3f9e6a53e2523914fe15948b7dfa7a5aa586bf5dfaa53a9a3709`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89148a95936b959a2ec5d5ecd10eff6132c04a72eff11767e0e2143f15d4ae6`  
		Last Modified: Mon, 27 Nov 2017 19:11:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c199c4c9fe2daacaf5c669dc24aadaf5fe0ec37aad37bf40548a35794d5c686`  
		Last Modified: Mon, 27 Nov 2017 19:11:55 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246ef672b9c96bdddfd250732bdb18fa36777a3decf48cc91e6fb230eeb9956`  
		Last Modified: Mon, 27 Nov 2017 19:11:59 GMT  
		Size: 68.7 MB (68661903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:02dc095d50923de1bf8b3c7928d2852de85bef16384960bd3b72ec9faffc07cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244993758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1404fa89aff361af83a94ec8a1467cfb1380f2c2e23d1bfd7313237d61f41c`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:30 GMT
ADD file:9568289c0621d85725d9ec76f81ff82cd74d503bd00c810a4f2995a2140bf472 in / 
# Fri, 17 Nov 2017 22:51:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:33 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 23:15:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:33 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 23:16:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 23:16:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:03:47 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 18 Nov 2017 00:03:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 18 Nov 2017 00:03:59 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 18 Nov 2017 00:03:59 GMT
ARG LIBERTY_URL
# Sat, 18 Nov 2017 00:03:59 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 18 Nov 2017 00:04:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 18 Nov 2017 00:04:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Nov 2017 00:04:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 18 Nov 2017 00:04:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 18 Nov 2017 00:04:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 18 Nov 2017 00:04:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 18 Nov 2017 00:04:19 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 18 Nov 2017 00:04:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 18 Nov 2017 00:04:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 18 Nov 2017 00:04:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 18 Nov 2017 00:06:49 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 18 Nov 2017 00:07:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:3d848dba019041e0794611dec2d82312dfc538f953f9f3e87151786b8d37d05a`  
		Last Modified: Fri, 17 Nov 2017 22:57:51 GMT  
		Size: 48.0 MB (47985638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c64dd2e73bc201c0f7ba39f4c3ee8664a02a4a13f953ac03c05e4c5058580f1`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523332a0298bc7026601255ecb9a16ef6b6b8fb4ceb8904770476bcfd1a864f6`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b996445e8d0352cb06cb47ebc7c965b74ecfc8d009ae03fc93c6ec9af2178a`  
		Last Modified: Fri, 17 Nov 2017 22:57:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bfa0c827cc7b5dd0854d74e314b8dc07bda7cb93d618198ddfcf9192aede8c`  
		Last Modified: Fri, 17 Nov 2017 22:57:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eaaceb0115f292cc5a6981c7aebd59186675ddd1e4ac1e85c896a087508cf`  
		Last Modified: Fri, 17 Nov 2017 23:31:16 GMT  
		Size: 2.9 MB (2877123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61d537865b5b753877561498ccf32bdd7cf28db47018ab9b92b16cbef9ee58`  
		Last Modified: Fri, 17 Nov 2017 23:31:30 GMT  
		Size: 113.4 MB (113385976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505f04d9106135ca087b41eb5e4c40d7242c1ffc91242c44f6fc4ee2074ebd84`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 421.1 KB (421141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7252e0d4c0d7b6b9efa935e1aab879764ac878668b4bd255c7b6db5e32e7f`  
		Last Modified: Sat, 18 Nov 2017 00:09:30 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c5dc7ca1497a3d99573850f0b3cad5d1ce0a0716ac778327e9ad4dd7d7c6fe`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f18d1fa367b403d2a5dc31dd08e7816a0582418ca4124487a9f9adee808be47`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068050c88880174abec9835a3f8f5e3b6b4992f0b1c34b7a9fc248e0ba904f8`  
		Last Modified: Sat, 18 Nov 2017 00:09:29 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0397ed7479403adb9a3c9937c25fb9950cd6de27c6aad23234f8e788c29c4ec`  
		Last Modified: Sat, 18 Nov 2017 00:10:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcacc8b584851cbbf2e0b5222eb138b3d4ebfcb50e3498304de6001b77f98535`  
		Last Modified: Sat, 18 Nov 2017 00:10:32 GMT  
		Size: 68.7 MB (68662552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:0a161e387c6424babca4854dbad8727091ebde473a4198e83958ac286e0102b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271831472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1929e8233604db3612a02c5bb787ae385c89dcd8179ee2fc7ab0f52f680b1ca`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:17:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 17 Nov 2017 23:20:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6781909fb3077ade76b7dc229c530812ccc9ede3b7402ab31e488a8e3263d0`  
		Last Modified: Fri, 17 Nov 2017 23:26:32 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b47ee329844ece5543011223599be447643faaad2a2a4c2e73547276a71539`  
		Last Modified: Fri, 17 Nov 2017 23:26:41 GMT  
		Size: 68.7 MB (68674497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:75939fc1f0d0553e8d18bd70ba6bf8a32b12ff492e66640a31d9484d173a5754
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9904662449b158062b8843c6518a4e18bd2fe7962a62201012ea4b416e4985`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:42:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Tue, 28 Nov 2017 11:43:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='06939278d067833ba77d17214e7f575f608d0e25e4dd011a24931249dbb7e7f0';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f90fb079f83c82835eeba1b0a9fe42c6f28dc210852a65129df1d25b5334a732';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b1a6af789bb6b95fd007f1bfe9238f8cd5f99ef87d7fa2e83361127eb5ae4122';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='839aa6434ea8f021b7031a96993211b8c6e15bf0d4028df01094d26f23274113';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ac06d0bdcb20875afbe7f1eb68d3ba0daeeccec9de04425a2cf47ae2c30997ce';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 28 Nov 2017 11:43:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:41 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 28 Nov 2017 12:04:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:04:49 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 28 Nov 2017 12:04:49 GMT
ARG LIBERTY_URL
# Tue, 28 Nov 2017 12:04:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 28 Nov 2017 12:04:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 28 Nov 2017 12:04:57 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 12:04:57 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 28 Nov 2017 12:05:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 28 Nov 2017 12:05:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 28 Nov 2017 12:05:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 28 Nov 2017 12:05:06 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 28 Nov 2017 12:05:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 28 Nov 2017 12:05:06 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 28 Nov 2017 12:05:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 28 Nov 2017 12:07:57 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 28 Nov 2017 12:09:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58f22ba2a14d884627ba3370df01d51342eede1ad61abc2722a14e7a169dbbf`  
		Last Modified: Tue, 28 Nov 2017 11:45:41 GMT  
		Size: 123.8 MB (123780509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4929f01091bd12a50f9f9a6edca45e6df6efaeff125a994789d4bf58bdab27`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 427.9 KB (427858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85d0d9d9fe1c4bf87bd30eb3c942287831544d02f0aec94d842284fc82349f0`  
		Last Modified: Tue, 28 Nov 2017 12:11:03 GMT  
		Size: 11.7 MB (11656672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e28970144c26135aa558c83223c15aa6c5a1dbc5570a77c1208a4aa4c0e7e`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f71fa46e5a3cc85dc00734acdd3a08da7f431c5be9830994c27191c83d4c5e7`  
		Last Modified: Tue, 28 Nov 2017 12:11:02 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb72bd3ac432ab23f25f765bd7c2b2fa41cfdd57606b40ad4bf5e19e58f08a7b`  
		Last Modified: Tue, 28 Nov 2017 12:11:01 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cacb3f334929c29ce0c36c03a743f97755065b4c2fad30206efa99dfc601ebf`  
		Last Modified: Tue, 28 Nov 2017 12:11:36 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeaa562df9a1d028a9a095c60c9fe81b20fa12d58ecdedc6a8f3534c46533a55`  
		Last Modified: Tue, 28 Nov 2017 12:11:41 GMT  
		Size: 68.7 MB (68662387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
