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
$ docker pull websphere-liberty@sha256:5b7df1fa1b516a46724b5b8c94ef5099af97001c1f45f589b38d607482ef1cab
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175022616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc973337998d07ee0f2604d1bd99368ce62151b7efa5400fb90c2a5596e3a9b`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
$ docker pull websphere-liberty@sha256:c9b0f809a06557d39badda4ccefad8fdf05ecdaf01fcb44f1eda681487bfeeac
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242158201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861ca4a64b9fa34318b247a9e185224f0ff1b976b85ff0bb5cd8cc9e4dc0b651`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 11 Aug 2016 22:14:37 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 11 Aug 2016 22:14:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:34:04 GMT
ENV LIBERTY_VERSION=2016.9.0_0
# Fri, 26 Aug 2016 18:34:16 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 26 Aug 2016 18:34:18 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Aug 2016 18:34:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 26 Aug 2016 18:34:21 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 26 Aug 2016 18:34:24 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 26 Aug 2016 18:34:26 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/
# Fri, 26 Aug 2016 18:34:34 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 26 Aug 2016 18:34:34 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:ea79a713d7d5619181d738a9c086f7b5ac557e29ad617637f5e06fca1d299886`  
		Last Modified: Thu, 11 Aug 2016 22:17:00 GMT  
		Size: 265.2 KB (265185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774d069add9c001652938dd920b4a007e1b8fdd3a171f17fc6c3db703f70b67c`  
		Last Modified: Fri, 26 Aug 2016 18:36:06 GMT  
		Size: 78.6 MB (78623473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b1837f63eb06333251ea40f8fe3993051f2e5f01301b217476f9d81f784f69`  
		Last Modified: Fri, 26 Aug 2016 18:35:56 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50016ad9aa08def88f1f09bce134a70b44efb65883461e97905fb5b756b48591`  
		Last Modified: Fri, 26 Aug 2016 18:35:56 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0bcb8e27e745a0246b8a591a55d4fc0969d7e217345af39a7af29a84b5d8e1`  
		Last Modified: Fri, 26 Aug 2016 18:35:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
