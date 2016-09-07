<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:beta`](#websphere-libertybeta)

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:efc2d21104c7621a842d4dc4d8d533e79434c3eb429a8b3a99117f75bdd856a2
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175103279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d511f3c39cf7ae330aec42d2e4eedc818a231b5b48c19af34c3904b62da7378d`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 17:59:52 GMT
ENV JAVA_VERSION=1.8.0_sr3fp11
# Wed, 07 Sep 2016 18:00:27 GMT
RUN ESUM="a5e0e4e74bd50f6e57117592a97ded215225d92a434582089c9518807812e54a"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 07 Sep 2016 18:00:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 18:24:14 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 07 Sep 2016 18:24:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 18:24:21 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Wed, 07 Sep 2016 18:24:24 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 07 Sep 2016 18:24:25 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 18:24:26 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 07 Sep 2016 18:24:26 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 07 Sep 2016 18:24:27 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 07 Sep 2016 18:24:28 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 07 Sep 2016 18:24:28 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c38edab1e5c048059ae410f6ec815f948d80440c419ac29d03bc0b729cd2c1b`  
		Last Modified: Wed, 07 Sep 2016 18:02:57 GMT  
		Size: 110.5 MB (110491605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a7f9f5b7ad110e53cb6b7d2b1164600b7a92ec59e68588d384e494f9e6b7d`  
		Last Modified: Wed, 07 Sep 2016 18:24:35 GMT  
		Size: 265.4 KB (265365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5828bb4416f1d4fd9eab31b53f1025a81c6511f258e44b329f04865b42ba70`  
		Last Modified: Wed, 07 Sep 2016 18:24:35 GMT  
		Size: 11.5 MB (11489493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3864cfe651c99adefa86d95887255a7d0f399837d7582d4c8b8d37967b60e28`  
		Last Modified: Wed, 07 Sep 2016 18:24:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8437d44804a9e2fe472882a484504e012496e7a6692d5d88c05d3caad0b12a5`  
		Last Modified: Wed, 07 Sep 2016 18:24:33 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:4c39a1d3a9c48987fe615a453061f2af150900a5b2486c78273637942d375da0
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227210587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963024ba9e78b2eba50c64086ddbdab6932f6ae4109405d6425649095fdbb609`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:46:29 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Tue, 30 Aug 2016 19:47:01 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 30 Aug 2016 19:47:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:34:44 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 31 Aug 2016 04:34:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:34:58 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Wed, 31 Aug 2016 04:35:02 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 31 Aug 2016 04:35:02 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:35:02 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 31 Aug 2016 04:35:04 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 31 Aug 2016 04:35:09 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 31 Aug 2016 04:35:09 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 31 Aug 2016 04:35:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:35:10 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Wed, 31 Aug 2016 04:35:11 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 31 Aug 2016 04:36:19 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0   && rm -rf /output/workarea /output/logs
# Wed, 31 Aug 2016 04:36:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21496c89b500ed05444fbd918346c33cbfb3b86c9d1a23e0af50e111d663084`  
		Last Modified: Wed, 07 Sep 2016 18:23:14 GMT  
		Size: 110.5 MB (110466054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeae221c4b4b3f8320e22c4c09fd6959196cc2c4028ba3a9c76d91e974c7ae4`  
		Last Modified: Wed, 07 Sep 2016 18:22:56 GMT  
		Size: 265.4 KB (265375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791358fdaf51a6568e0aabef4feeaf870fa42effea8ca39f02d48adb5f0170f9`  
		Last Modified: Wed, 07 Sep 2016 18:22:58 GMT  
		Size: 11.5 MB (11489491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd60bf3c125e7fafccc5276e36d21e51098885a623e87cc4d9cc540435d7006`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d7d4fbbd1ee7649889477303d3913e5caef86b8f6126d84caf3c56a6343bd`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd8d91d77d347f48fd10e8adb7201561700e37c14b57931fce88e6702b969ea`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ff968c7d1a537f92f584491b997f685d9eaf05ac615f9ea8527716b514919`  
		Last Modified: Wed, 07 Sep 2016 18:22:54 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ff1bd8bd94d7a875466b4f1108194a964fa1527e0a3dc7b81f6720bb5aec0`  
		Last Modified: Wed, 07 Sep 2016 18:23:01 GMT  
		Size: 52.1 MB (52131852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:5ab503e0bf5f49720c4866d8674a7d022347d60bafc476d98eeab6add2599aa7
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (236000852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a03225f69a54c54fb368d0dd38f1df0e8171e3d8b2fef6702bd3765331832a`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:46:29 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Tue, 30 Aug 2016 19:47:01 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 30 Aug 2016 19:47:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:34:44 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 31 Aug 2016 04:34:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:34:58 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Wed, 31 Aug 2016 04:35:02 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 31 Aug 2016 04:35:02 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:35:02 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 31 Aug 2016 04:35:04 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 31 Aug 2016 04:35:09 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 31 Aug 2016 04:35:09 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 31 Aug 2016 04:35:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/ 
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 31 Aug 2016 04:37:33 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Wed, 31 Aug 2016 04:37:33 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21496c89b500ed05444fbd918346c33cbfb3b86c9d1a23e0af50e111d663084`  
		Last Modified: Wed, 07 Sep 2016 18:23:14 GMT  
		Size: 110.5 MB (110466054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeae221c4b4b3f8320e22c4c09fd6959196cc2c4028ba3a9c76d91e974c7ae4`  
		Last Modified: Wed, 07 Sep 2016 18:22:56 GMT  
		Size: 265.4 KB (265375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791358fdaf51a6568e0aabef4feeaf870fa42effea8ca39f02d48adb5f0170f9`  
		Last Modified: Wed, 07 Sep 2016 18:22:58 GMT  
		Size: 11.5 MB (11489491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd60bf3c125e7fafccc5276e36d21e51098885a623e87cc4d9cc540435d7006`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d7d4fbbd1ee7649889477303d3913e5caef86b8f6126d84caf3c56a6343bd`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0e2968e396e926c4d9ec1ba8233ccbd8d97700461e1f33453e23749f430408`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9669451cf0bc0ebc41b724215c98cf50dc819a33e54e3e7f2ecc5bac8b68687`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f46f97d043a78af30a60bc55cdecfa3feee56f2fc9d09796cd7d7cf715bd93`  
		Last Modified: Wed, 07 Sep 2016 18:23:37 GMT  
		Size: 60.9 MB (60922118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:ccee25ec77e8102f0a1688e8a4d540a482061db6f855f4772d9ecdee8400158e
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278233433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661af6cbe8dfeb5e7efb3d89fca3b927b10522f01bf353fdced69b06b3d267d0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:46:29 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Tue, 30 Aug 2016 19:47:01 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 30 Aug 2016 19:47:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:34:44 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 31 Aug 2016 04:34:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:34:58 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Wed, 31 Aug 2016 04:35:02 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 31 Aug 2016 04:35:02 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:35:02 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 31 Aug 2016 04:35:04 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 31 Aug 2016 04:35:09 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 31 Aug 2016 04:35:09 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 31 Aug 2016 04:35:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/ 
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 31 Aug 2016 04:37:33 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Wed, 31 Aug 2016 04:37:33 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:37:33 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 31 Aug 2016 04:38:17 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21496c89b500ed05444fbd918346c33cbfb3b86c9d1a23e0af50e111d663084`  
		Last Modified: Wed, 07 Sep 2016 18:23:14 GMT  
		Size: 110.5 MB (110466054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeae221c4b4b3f8320e22c4c09fd6959196cc2c4028ba3a9c76d91e974c7ae4`  
		Last Modified: Wed, 07 Sep 2016 18:22:56 GMT  
		Size: 265.4 KB (265375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791358fdaf51a6568e0aabef4feeaf870fa42effea8ca39f02d48adb5f0170f9`  
		Last Modified: Wed, 07 Sep 2016 18:22:58 GMT  
		Size: 11.5 MB (11489491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd60bf3c125e7fafccc5276e36d21e51098885a623e87cc4d9cc540435d7006`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d7d4fbbd1ee7649889477303d3913e5caef86b8f6126d84caf3c56a6343bd`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0e2968e396e926c4d9ec1ba8233ccbd8d97700461e1f33453e23749f430408`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9669451cf0bc0ebc41b724215c98cf50dc819a33e54e3e7f2ecc5bac8b68687`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f46f97d043a78af30a60bc55cdecfa3feee56f2fc9d09796cd7d7cf715bd93`  
		Last Modified: Wed, 07 Sep 2016 18:23:37 GMT  
		Size: 60.9 MB (60922118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3134616b54ff4023953326f2be2156b6a035bbaaa08537d4b94bacd9d227580b`  
		Last Modified: Wed, 07 Sep 2016 18:23:52 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97146cfb4ca50ee54c38f6cb469a8b8d34538adc890ce0f491be48126ee39e1a`  
		Last Modified: Wed, 07 Sep 2016 18:23:57 GMT  
		Size: 42.2 MB (42231685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:ccee25ec77e8102f0a1688e8a4d540a482061db6f855f4772d9ecdee8400158e
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278233433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661af6cbe8dfeb5e7efb3d89fca3b927b10522f01bf353fdced69b06b3d267d0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:46:29 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Tue, 30 Aug 2016 19:47:01 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 30 Aug 2016 19:47:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:34:44 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 31 Aug 2016 04:34:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:34:58 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Wed, 31 Aug 2016 04:35:02 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 31 Aug 2016 04:35:02 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 04:35:02 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 31 Aug 2016 04:35:04 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 31 Aug 2016 04:35:09 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 31 Aug 2016 04:35:09 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 31 Aug 2016 04:35:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/ 
# Wed, 31 Aug 2016 04:36:20 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Wed, 31 Aug 2016 04:37:33 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Wed, 31 Aug 2016 04:37:33 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Wed, 31 Aug 2016 04:37:33 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 31 Aug 2016 04:38:17 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21496c89b500ed05444fbd918346c33cbfb3b86c9d1a23e0af50e111d663084`  
		Last Modified: Wed, 07 Sep 2016 18:23:14 GMT  
		Size: 110.5 MB (110466054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeae221c4b4b3f8320e22c4c09fd6959196cc2c4028ba3a9c76d91e974c7ae4`  
		Last Modified: Wed, 07 Sep 2016 18:22:56 GMT  
		Size: 265.4 KB (265375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791358fdaf51a6568e0aabef4feeaf870fa42effea8ca39f02d48adb5f0170f9`  
		Last Modified: Wed, 07 Sep 2016 18:22:58 GMT  
		Size: 11.5 MB (11489491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd60bf3c125e7fafccc5276e36d21e51098885a623e87cc4d9cc540435d7006`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d7d4fbbd1ee7649889477303d3913e5caef86b8f6126d84caf3c56a6343bd`  
		Last Modified: Wed, 07 Sep 2016 18:22:53 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0e2968e396e926c4d9ec1ba8233ccbd8d97700461e1f33453e23749f430408`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9669451cf0bc0ebc41b724215c98cf50dc819a33e54e3e7f2ecc5bac8b68687`  
		Last Modified: Wed, 07 Sep 2016 18:23:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f46f97d043a78af30a60bc55cdecfa3feee56f2fc9d09796cd7d7cf715bd93`  
		Last Modified: Wed, 07 Sep 2016 18:23:37 GMT  
		Size: 60.9 MB (60922118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3134616b54ff4023953326f2be2156b6a035bbaaa08537d4b94bacd9d227580b`  
		Last Modified: Wed, 07 Sep 2016 18:23:52 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97146cfb4ca50ee54c38f6cb469a8b8d34538adc890ce0f491be48126ee39e1a`  
		Last Modified: Wed, 07 Sep 2016 18:23:57 GMT  
		Size: 42.2 MB (42231685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:7f77869f39aafdbf59c1592d6d607d8c6f7e959142cdd770a3429501924b0b88
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242238848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad51d1ed645d5ef03197405be3a1729bcac8dce46c81424cf7397a2ee0169fe`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 30 Aug 2016 17:48:08 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in / 
# Tue, 30 Aug 2016 17:48:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:48:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:48:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:48:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:48:11 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 19:46:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:46:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 17:59:52 GMT
ENV JAVA_VERSION=1.8.0_sr3fp11
# Wed, 07 Sep 2016 18:00:27 GMT
RUN ESUM="a5e0e4e74bd50f6e57117592a97ded215225d92a434582089c9518807812e54a"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 07 Sep 2016 18:00:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 18:22:04 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Wed, 07 Sep 2016 18:22:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 18:22:13 GMT
ENV LIBERTY_VERSION=2016.9.0_0
# Wed, 07 Sep 2016 18:22:22 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Wed, 07 Sep 2016 18:22:22 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 18:22:23 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 07 Sep 2016 18:22:23 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 07 Sep 2016 18:22:24 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 07 Sep 2016 18:22:25 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Wed, 07 Sep 2016 18:22:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 07 Sep 2016 18:22:25 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf88eb2790edb299a2265d9a60c5d1c12663888771329353bd9e14aaf0d7d1ab`  
		Last Modified: Wed, 07 Sep 2016 18:02:43 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79bc15ccdb31fad17a8f2ee58ddced42fd15f1308ea6ada50be1ded605cd3f1`  
		Last Modified: Wed, 07 Sep 2016 18:02:42 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eea697f093321b19fd4be785fb2ab28db4a0adf426b98a62947a5938b46740`  
		Last Modified: Wed, 07 Sep 2016 18:02:41 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0772594b736aa68473c326abd0338c4cabca931e8997dda2bdf0a637a7ab73c`  
		Last Modified: Wed, 07 Sep 2016 18:02:39 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d864bbed0dc530ec64d53707247a80a6e68389bf0abae7868fa1d1222aee1a0`  
		Last Modified: Wed, 07 Sep 2016 18:02:40 GMT  
		Size: 3.1 MB (3121284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c38edab1e5c048059ae410f6ec815f948d80440c419ac29d03bc0b729cd2c1b`  
		Last Modified: Wed, 07 Sep 2016 18:02:57 GMT  
		Size: 110.5 MB (110491605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fa54f925b53cf1502191a14bdba3cda3cd6fd7edfaac7c23450f2a77673e57`  
		Last Modified: Wed, 07 Sep 2016 18:22:31 GMT  
		Size: 265.4 KB (265369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2364e5c714ade995751b695f680ee329efc054fcb4f14b4e9735d3641e92f2`  
		Last Modified: Wed, 07 Sep 2016 18:22:39 GMT  
		Size: 78.6 MB (78623459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347c21115b3833a176e2a0cb16ba9bd46951ff84b3955a2cc2494e3cecfad50e`  
		Last Modified: Wed, 07 Sep 2016 18:22:31 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e03aa0b4ccb1a390ead536997ed5745e74e59c9146a6448ae5f1fd15ff427d`  
		Last Modified: Wed, 07 Sep 2016 18:22:31 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934058fd9d10b0fb82fcabf56581dc17bccf1d37fd7583625f88bf2604e1ac45`  
		Last Modified: Wed, 07 Sep 2016 18:22:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
