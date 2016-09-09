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
