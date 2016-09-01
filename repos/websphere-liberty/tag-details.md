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
$ docker pull websphere-liberty@sha256:6d65da959651d9a444028653701d3033fdc8996b5c187b3b376c964a47f41904
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175077783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba59cad653fc6f6972a503c56a43c96a166cd209369927bc18726e4b516acd1`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:43:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Aug 2016 20:43:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:43:58 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Fri, 26 Aug 2016 20:44:36 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Fri, 26 Aug 2016 20:44:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:26:24 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 26 Aug 2016 21:26:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:26:39 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Fri, 26 Aug 2016 21:26:44 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 26 Aug 2016 21:26:45 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:26:46 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 26 Aug 2016 21:26:49 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 26 Aug 2016 21:26:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 26 Aug 2016 21:26:55 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 26 Aug 2016 21:26:56 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926d5135f2729094daed61fb005db297a4a3ba39afc2e2636d5c13ccf3669c5`  
		Last Modified: Fri, 26 Aug 2016 20:44:52 GMT  
		Size: 3.1 MB (3121408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0692d22a7bf9a8baf48ff8f045fe7e6f88b278457e92f7a5d0db7888b55a9187`  
		Last Modified: Fri, 26 Aug 2016 20:45:12 GMT  
		Size: 110.5 MB (110465963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1ea852322e100084314e5894f5d247769239f175553e2375f714190cc77f69`  
		Last Modified: Fri, 26 Aug 2016 21:27:10 GMT  
		Size: 265.4 KB (265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa90ee85147725ec553e12fe31840148cbb4b61cac7fb6784ae9596984c7fd0a`  
		Last Modified: Fri, 26 Aug 2016 21:27:13 GMT  
		Size: 11.5 MB (11489493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e85e88359c8b982c8be73c684f4a44b4c8ad05ca7e3cbde6ba2f88d112e454`  
		Last Modified: Fri, 26 Aug 2016 21:27:10 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7712b61e31890cf79a7ef9a8bca165883ba12446b7ef4b1b46007eb57e2f05e9`  
		Last Modified: Fri, 26 Aug 2016 21:27:09 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:54974ff243986c27f63d042c57c970a14f980fa205e4b0fbdf30c62b485eefbd
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227155465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149c276a8a71faec6bdbf8e2ba469d0a7625cebcb06abb79fcb9778b937e0a34`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:12:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 11 Aug 2016 19:12:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:12:46 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Thu, 11 Aug 2016 19:13:28 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 11 Aug 2016 19:13:29 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:10:59 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 22:11:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:11:08 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 22:11:12 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 22:11:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:11:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 22:11:14 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 22:11:17 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 22:11:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 22:11:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:11:18 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/
# Thu, 11 Aug 2016 22:11:19 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 22:12:28 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 22:12:29 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f1599c8e1ab6cf4831137deb4ec267f28e938ac9273166f426837859d3fb27`  
		Last Modified: Thu, 11 Aug 2016 22:15:32 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763afbbef5a7c2f7ad6562d2b440213272ae0f5d93b987a059f6413e345f3ac0`  
		Last Modified: Thu, 11 Aug 2016 22:15:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bf874b4d679b704b05ff1432e224b941e4c7275cb210d9bb7f40dd8c5e686f`  
		Last Modified: Thu, 11 Aug 2016 22:15:40 GMT  
		Size: 52.1 MB (52131858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:1b808006676a67929d6e4572f2f82f7d8c8197ec4c7ea29dd79c6bb8041f2099
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235945751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adb796da35dd5f1961489b73fb813e4085db71692548f577394385e03ebe5d1`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:12:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 11 Aug 2016 19:12:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:12:46 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Thu, 11 Aug 2016 19:13:28 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 11 Aug 2016 19:13:29 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:10:59 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 22:11:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:11:08 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 22:11:12 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 22:11:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:11:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 22:11:14 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 22:11:17 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 22:11:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 22:11:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 22:13:47 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 22:13:48 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:30fecde7d6b39786e8f6beb7bbb877f9c36007b0e5ecb9fe77ac60641eed6e90
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278178509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a1b6948021cc0a2442e743a3eb78ddbff32d404554d1bfd81159f08717835e`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:12:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 11 Aug 2016 19:12:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:12:46 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Thu, 11 Aug 2016 19:13:28 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 11 Aug 2016 19:13:29 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:10:59 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 22:11:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:11:08 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 22:11:12 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 22:11:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:11:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 22:11:14 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 22:11:17 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 22:11:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 22:11:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 22:13:47 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 22:13:48 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:13:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/
# Thu, 11 Aug 2016 22:14:36 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6652df1a3d2732873c804320b5587c9e71d807ac5fca4572c90c9b6fa617092`  
		Last Modified: Thu, 11 Aug 2016 22:16:25 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3b97b0d1835132964a1d2f70ed4164b8a98de46155701a7cf7f90faa6bb14`  
		Last Modified: Thu, 11 Aug 2016 22:16:31 GMT  
		Size: 42.2 MB (42231858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:30fecde7d6b39786e8f6beb7bbb877f9c36007b0e5ecb9fe77ac60641eed6e90
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278178509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a1b6948021cc0a2442e743a3eb78ddbff32d404554d1bfd81159f08717835e`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 11 Aug 2016 17:46:20 GMT
ADD file:a2427e00553ce3905be425a208168cd1a587d9d23571ea74c033a35c8f00cbc0 in /
# Thu, 11 Aug 2016 17:46:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:29 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:12:15 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 11 Aug 2016 19:12:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 19:12:46 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Thu, 11 Aug 2016 19:13:28 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 11 Aug 2016 19:13:29 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:10:59 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 11 Aug 2016 22:11:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:11:08 GMT
ENV LIBERTY_VERSION=16.0.0_2
# Thu, 11 Aug 2016 22:11:12 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r')      && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 11 Aug 2016 22:11:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 22:11:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 11 Aug 2016 22:11:14 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 11 Aug 2016 22:11:17 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 11 Aug 2016 22:11:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 11 Aug 2016 22:11:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:b61ee9a8ed6220186f1ae25d322538d94868b07c26e808b24f3c84785e60b62e in /config/
# Thu, 11 Aug 2016 22:12:30 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/
# Thu, 11 Aug 2016 22:13:47 GMT
RUN installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 requestTiming-1.0 sessionDatabase-1.0     webProfile-7.0   && rm -rf /output/workarea /output/logs
# Thu, 11 Aug 2016 22:13:48 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 11 Aug 2016 22:13:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/
# Thu, 11 Aug 2016 22:14:36 GMT
RUN installUtility install --acceptLicense defaultServer     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:2f0243478e1f7fcb578778370ebcbcb350ef637e8b966c6a24830df61a3e89b8`  
		Last Modified: Thu, 11 Aug 2016 17:49:30 GMT  
		Size: 49.7 MB (49678667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6652df1a3d2732873c804320b5587c9e71d807ac5fca4572c90c9b6fa617092`  
		Last Modified: Thu, 11 Aug 2016 22:16:25 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3b97b0d1835132964a1d2f70ed4164b8a98de46155701a7cf7f90faa6bb14`  
		Last Modified: Thu, 11 Aug 2016 22:16:31 GMT  
		Size: 42.2 MB (42231858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:ae29de3cc478f557c7c35387d219d4258cd5854c204035887aab3ea93c4499b9
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242213347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b77978b0dc5bae6e9f3efa5bf4353319f24436fbf3a135ddcac9a0a11d3f135`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:43:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Aug 2016 20:43:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:43:58 GMT
ENV JAVA_VERSION=1.8.0_sr3fp10
# Fri, 26 Aug 2016 20:44:36 GMT
RUN ESUM="c18b4e7d822df96aa244a01e1bd8e10d03e5fc2b806d809cbca82dca711faf54"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Fri, 26 Aug 2016 20:44:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:24:18 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Fri, 26 Aug 2016 21:24:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 21:24:30 GMT
ENV LIBERTY_VERSION=2016.9.0_0
# Fri, 26 Aug 2016 21:24:41 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 26 Aug 2016 21:24:42 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 21:24:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 26 Aug 2016 21:24:46 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 26 Aug 2016 21:24:49 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 26 Aug 2016 21:24:51 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/
# Fri, 26 Aug 2016 21:24:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 26 Aug 2016 21:24:53 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926d5135f2729094daed61fb005db297a4a3ba39afc2e2636d5c13ccf3669c5`  
		Last Modified: Fri, 26 Aug 2016 20:44:52 GMT  
		Size: 3.1 MB (3121408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0692d22a7bf9a8baf48ff8f045fe7e6f88b278457e92f7a5d0db7888b55a9187`  
		Last Modified: Fri, 26 Aug 2016 20:45:12 GMT  
		Size: 110.5 MB (110465963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9ed3d607c3d0d8275ad1d0f4f0d58b326c05a743fdda39aa03c7f3d99dd48b`  
		Last Modified: Fri, 26 Aug 2016 21:25:07 GMT  
		Size: 265.4 KB (265375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46fd860bec89c1343549e2cc1dea18a36c6bf8fc63d428dc456be315307c664`  
		Last Modified: Fri, 26 Aug 2016 21:25:15 GMT  
		Size: 78.6 MB (78623461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2081251415b53c8ca7969d0b67d85c4dd3663f20d4663d3a81b83dbbb660223`  
		Last Modified: Fri, 26 Aug 2016 21:25:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0899ed33404b1296c88cb0af9615df32ad82d1780d53045466b7ca49c586952f`  
		Last Modified: Fri, 26 Aug 2016 21:25:06 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc7da511cdc7317fe108ec608933ae00a5b3291d847799dd6602b9b2d16e85c`  
		Last Modified: Fri, 26 Aug 2016 21:25:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
