<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:beta`](#websphere-libertybeta)

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:c1d9eb7aeaef905c57a23168cdf3e2687126b383b522ed8f9df64ff6494a0150
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174669493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15df70d98cce79a6160da018db24942262486f2484d5e040f8b30e52c356f4e9`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 17:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:51:40 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 17:51:45 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 17:51:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:47 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:51:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:51:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:51:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:51:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:79d29df57f48b689621cc53e4cd8c3aa1ac51e65246644199b3830944b5cd71d`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 265.2 KB (265187 bytes)
	-	`sha256:0e5b79f77de77381717e19ac289c8b4c7809caa52ce88e9c027308454b480afc`  
		Last Modified: Thu, 11 Aug 2016 17:57:07 GMT  
		Size: 11.5 MB (11489493 bytes)
	-	`sha256:d562c518f82142b6c8652d7448d79b16684704b2eb8c81c5aa3466634dbe88c6`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 177.0 B
	-	`sha256:03adbbb612973a0e8f78200d0435495ddacba51d55c5b62d53871731f3b73c0a`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 584.0 B

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:3e339e1fbbce7a19f96e63801e5f4630da1c21b457fdf3145420537b09f1fad6
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226802399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f59d32611d3cab5ae2cc3afe8fb3c075212e78fe1905ed66ba0c31d6376a640`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 17:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:51:40 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 17:51:45 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 17:51:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:47 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:51:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:51:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:51:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:51:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:52:01 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/
# Thu, 11 Aug 2016 17:52:02 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 17:53:20 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 17:53:21 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:79d29df57f48b689621cc53e4cd8c3aa1ac51e65246644199b3830944b5cd71d`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 265.2 KB (265187 bytes)
	-	`sha256:0e5b79f77de77381717e19ac289c8b4c7809caa52ce88e9c027308454b480afc`  
		Last Modified: Thu, 11 Aug 2016 17:57:07 GMT  
		Size: 11.5 MB (11489493 bytes)
	-	`sha256:d562c518f82142b6c8652d7448d79b16684704b2eb8c81c5aa3466634dbe88c6`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 177.0 B
	-	`sha256:03adbbb612973a0e8f78200d0435495ddacba51d55c5b62d53871731f3b73c0a`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 584.0 B
	-	`sha256:e6b8c15553ba240fd39cb915514376e8a0f38a761c546aecdebe15e76d01be1c`  
		Last Modified: Thu, 11 Aug 2016 17:57:24 GMT  
		Size: 538.0 B
	-	`sha256:e64036e583892dbb5006bddf0ce2bcd6fd9813827b0e611acf32d407d4cab3f8`  
		Last Modified: Thu, 11 Aug 2016 17:57:24 GMT  
		Size: 457.0 B
	-	`sha256:baf2de51cbbcb7a5fe85727fcdac54780e8d429f1ce212e1cda4055ee553a188`  
		Last Modified: Thu, 11 Aug 2016 17:57:31 GMT  
		Size: 52.1 MB (52131911 bytes)

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:6dd9068e2d47fcc7574fea5f5b933fb351bc93b65e980e9bb5505166330ebf46
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235592713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e82f185c434937a3894656f354314d977449c214150602ce4ac26df93a22c0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 17:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:51:40 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 17:51:45 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 17:51:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:47 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:51:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:51:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:51:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:51:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:53:23 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 17:53:25 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 17:54:50 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 17:54:51 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:79d29df57f48b689621cc53e4cd8c3aa1ac51e65246644199b3830944b5cd71d`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 265.2 KB (265187 bytes)
	-	`sha256:0e5b79f77de77381717e19ac289c8b4c7809caa52ce88e9c027308454b480afc`  
		Last Modified: Thu, 11 Aug 2016 17:57:07 GMT  
		Size: 11.5 MB (11489493 bytes)
	-	`sha256:d562c518f82142b6c8652d7448d79b16684704b2eb8c81c5aa3466634dbe88c6`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 177.0 B
	-	`sha256:03adbbb612973a0e8f78200d0435495ddacba51d55c5b62d53871731f3b73c0a`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 584.0 B
	-	`sha256:eac715c739ba79566e44d1c36bb7fa448bf1054072538de3f4ad9afb6c69d24c`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 537.0 B
	-	`sha256:de36926fb595d3a5a242b816d4baa80716d1d2cb59c1aa1f8c520ff88fb5e776`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 456.0 B
	-	`sha256:1911d66dea3dafbac8d246687dbcd05a07202be5cde4dd8655ddb0cf55fbe5ff`  
		Last Modified: Thu, 11 Aug 2016 17:58:20 GMT  
		Size: 60.9 MB (60922227 bytes)

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:76e48fef8f6f5c43f71e918fe548cd343872633fddd0b364a7efacdbff89202e
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277825635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9403ec9aa6aa3a309286ae58434a705f8e5f374641bcd23761e18fc8239844`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 17:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:51:40 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 17:51:45 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 17:51:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:47 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:51:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:51:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:51:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:51:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:53:23 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 17:53:25 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 17:54:50 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 17:54:51 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:54:53 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/
# Thu, 11 Aug 2016 17:55:56 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:79d29df57f48b689621cc53e4cd8c3aa1ac51e65246644199b3830944b5cd71d`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 265.2 KB (265187 bytes)
	-	`sha256:0e5b79f77de77381717e19ac289c8b4c7809caa52ce88e9c027308454b480afc`  
		Last Modified: Thu, 11 Aug 2016 17:57:07 GMT  
		Size: 11.5 MB (11489493 bytes)
	-	`sha256:d562c518f82142b6c8652d7448d79b16684704b2eb8c81c5aa3466634dbe88c6`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 177.0 B
	-	`sha256:03adbbb612973a0e8f78200d0435495ddacba51d55c5b62d53871731f3b73c0a`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 584.0 B
	-	`sha256:eac715c739ba79566e44d1c36bb7fa448bf1054072538de3f4ad9afb6c69d24c`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 537.0 B
	-	`sha256:de36926fb595d3a5a242b816d4baa80716d1d2cb59c1aa1f8c520ff88fb5e776`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 456.0 B
	-	`sha256:1911d66dea3dafbac8d246687dbcd05a07202be5cde4dd8655ddb0cf55fbe5ff`  
		Last Modified: Thu, 11 Aug 2016 17:58:20 GMT  
		Size: 60.9 MB (60922227 bytes)
	-	`sha256:7696b325363cc264855ae06e5301cea32557c2bb56594a2fa5eec5c43e28beb5`  
		Last Modified: Thu, 11 Aug 2016 17:58:41 GMT  
		Size: 901.0 B
	-	`sha256:ba45f89a9afd70406b7159e7c2114471d1e7ced92b09b808650a8adedc83bbb9`  
		Last Modified: Thu, 11 Aug 2016 17:58:46 GMT  
		Size: 42.2 MB (42232021 bytes)

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:76e48fef8f6f5c43f71e918fe548cd343872633fddd0b364a7efacdbff89202e
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277825635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9403ec9aa6aa3a309286ae58434a705f8e5f374641bcd23761e18fc8239844`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 17:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:51:40 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 17:51:45 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 17:51:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:51:47 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:51:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:51:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:51:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:51:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:53:23 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 17:53:25 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 17:54:50 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 17:54:51 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 11 Aug 2016 17:54:53 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/
# Thu, 11 Aug 2016 17:55:56 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:79d29df57f48b689621cc53e4cd8c3aa1ac51e65246644199b3830944b5cd71d`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 265.2 KB (265187 bytes)
	-	`sha256:0e5b79f77de77381717e19ac289c8b4c7809caa52ce88e9c027308454b480afc`  
		Last Modified: Thu, 11 Aug 2016 17:57:07 GMT  
		Size: 11.5 MB (11489493 bytes)
	-	`sha256:d562c518f82142b6c8652d7448d79b16684704b2eb8c81c5aa3466634dbe88c6`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 177.0 B
	-	`sha256:03adbbb612973a0e8f78200d0435495ddacba51d55c5b62d53871731f3b73c0a`  
		Last Modified: Thu, 11 Aug 2016 17:57:04 GMT  
		Size: 584.0 B
	-	`sha256:eac715c739ba79566e44d1c36bb7fa448bf1054072538de3f4ad9afb6c69d24c`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 537.0 B
	-	`sha256:de36926fb595d3a5a242b816d4baa80716d1d2cb59c1aa1f8c520ff88fb5e776`  
		Last Modified: Thu, 11 Aug 2016 17:58:05 GMT  
		Size: 456.0 B
	-	`sha256:1911d66dea3dafbac8d246687dbcd05a07202be5cde4dd8655ddb0cf55fbe5ff`  
		Last Modified: Thu, 11 Aug 2016 17:58:20 GMT  
		Size: 60.9 MB (60922227 bytes)
	-	`sha256:7696b325363cc264855ae06e5301cea32557c2bb56594a2fa5eec5c43e28beb5`  
		Last Modified: Thu, 11 Aug 2016 17:58:41 GMT  
		Size: 901.0 B
	-	`sha256:ba45f89a9afd70406b7159e7c2114471d1e7ced92b09b808650a8adedc83bbb9`  
		Last Modified: Thu, 11 Aug 2016 17:58:46 GMT  
		Size: 42.2 MB (42232021 bytes)

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:5aaa6d67dba95ce42582148ce22d2551b98794bcc4a37882a3b6850f38edc629
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238124553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b93da32ed781d4e8a58c430e71253a91567907b5f658b25167086775c50edc`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 22 Jul 2016 15:19:25 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Fri, 22 Jul 2016 15:19:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:31 GMT
CMD ["/bin/bash"]
# Wed, 10 Aug 2016 18:34:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Aug 2016 18:35:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 10 Aug 2016 18:35:12 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Wed, 10 Aug 2016 18:35:49 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 10 Aug 2016 18:35:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:56:01 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 11 Aug 2016 17:56:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:56:14 GMT
ENV LIBERTY_VERSION=2016.8.0_0
# Thu, 11 Aug 2016 17:56:41 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 11 Aug 2016 17:56:42 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:56:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 17:56:45 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 17:56:48 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 17:56:50 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/
# Thu, 11 Aug 2016 17:56:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 17:56:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)
	-	`sha256:2dc64e8f8d4f2e7511f002e12474ae01a482a9727d620f49a3871b5882891b3f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 828.0 B
	-	`sha256:670a583e1b5043337f8c73dcad9ff019f2ac0971475456fd4fdf296f2c5b939f`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 442.0 B
	-	`sha256:183b0bfcd10e095bb23120d43204762e2aa9b5a53e2060817a2460bafc76ad37`  
		Last Modified: Fri, 22 Jul 2016 15:22:16 GMT  
		Size: 681.0 B
	-	`sha256:6b7a8fe13fb9fdad60436ce70c80b55d3c1abfd6489dc6cd54863b8e3f6655ce`  
		Last Modified: Wed, 10 Aug 2016 18:38:45 GMT  
		Size: 3.1 MB (3120537 bytes)
	-	`sha256:46cb10e8302c88d640afdca809bfe13c93c2da1eb8cbd8b51a567a55a3e8854f`  
		Last Modified: Wed, 10 Aug 2016 18:39:02 GMT  
		Size: 110.5 MB (110466009 bytes)
	-	`sha256:2ec2ddb792889dce103f40e2070a4902d936aa31b7d7cf56b71552069f16bc71`  
		Last Modified: Thu, 11 Aug 2016 17:59:16 GMT  
		Size: 265.2 KB (265186 bytes)
	-	`sha256:638bb6612f7593f4ad5d6a178225bb8f13a56803ffda1ea6de9e873c9132c738`  
		Last Modified: Thu, 11 Aug 2016 17:59:24 GMT  
		Size: 74.9 MB (74942966 bytes)
	-	`sha256:cc1b8c4be74c95c7920ffc1684258d4e4efdfccd41ec867381b98723aef4b57d`  
		Last Modified: Thu, 11 Aug 2016 17:59:15 GMT  
		Size: 178.0 B
	-	`sha256:b97117cd6575e0ead1efbca0fca1be0567b074e0339a4b5e52eab4f28c8b1ae8`  
		Last Modified: Thu, 11 Aug 2016 17:59:16 GMT  
		Size: 1.8 KB (1773 bytes)
	-	`sha256:c4dbb7bbb0c5691c6c59073e0d5d27c8842f3e9cc380994f0bed12006287f107`  
		Last Modified: Thu, 11 Aug 2016 17:59:15 GMT  
		Size: 398.0 B
