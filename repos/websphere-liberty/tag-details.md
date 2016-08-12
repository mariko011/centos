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
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B

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
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B
	-	`sha256:a0f1599c8e1ab6cf4831137deb4ec267f28e938ac9273166f426837859d3fb27`  
		Last Modified: Thu, 11 Aug 2016 22:15:32 GMT  
		Size: 535.0 B
	-	`sha256:763afbbef5a7c2f7ad6562d2b440213272ae0f5d93b987a059f6413e345f3ac0`  
		Last Modified: Thu, 11 Aug 2016 22:15:35 GMT  
		Size: 456.0 B
	-	`sha256:51bf874b4d679b704b05ff1432e224b941e4c7275cb210d9bb7f40dd8c5e686f`  
		Last Modified: Thu, 11 Aug 2016 22:15:40 GMT  
		Size: 52.1 MB (52131858 bytes)

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
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)

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
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)
	-	`sha256:f6652df1a3d2732873c804320b5587c9e71d807ac5fca4572c90c9b6fa617092`  
		Last Modified: Thu, 11 Aug 2016 22:16:25 GMT  
		Size: 900.0 B
	-	`sha256:73e3b97b0d1835132964a1d2f70ed4164b8a98de46155701a7cf7f90faa6bb14`  
		Last Modified: Thu, 11 Aug 2016 22:16:31 GMT  
		Size: 42.2 MB (42231858 bytes)

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
	-	`sha256:d8909ae88469beef31d7ad33c85a0a1b2ade2cef4d51bab0c1353abd8477054d`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 823.0 B
	-	`sha256:820f09abed29b404920f73274dd7107a4080d22a40351683aa9c410df3d18eeb`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 445.0 B
	-	`sha256:01193a8f3d889f5c75dd4c54e7ad2a81216f10e7b2d515af571d17a4015b3d59`  
		Last Modified: Thu, 11 Aug 2016 17:49:14 GMT  
		Size: 682.0 B
	-	`sha256:36bf6fa22192c3dccd7449440e58a22c1dcca953e86535fbd33f2c03c658a48e`  
		Last Modified: Thu, 11 Aug 2016 19:13:43 GMT  
		Size: 3.1 MB (3120584 bytes)
	-	`sha256:3218547d8df96e4aa9192e3b93372c867e704b19a20248cb360a9dcd92efecd4`  
		Last Modified: Thu, 11 Aug 2016 19:14:00 GMT  
		Size: 110.5 MB (110465987 bytes)
	-	`sha256:56312c11f138263eeee9d1be8e7d3a7b9d94f67c0a6f3af9714e0584eeed7261`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 265.2 KB (265185 bytes)
	-	`sha256:d41a739c245579c77d9d91ec451d917e022398779287a91dfc8ce2167501500e`  
		Last Modified: Thu, 11 Aug 2016 22:15:14 GMT  
		Size: 11.5 MB (11489483 bytes)
	-	`sha256:bc9a7b0c87f47b9661d13c67abe509ceeaad473146f63ac84f0b0d94c73c4828`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 177.0 B
	-	`sha256:5ba17d3a125b4e6797839891f829f2b2cb5e49ac57e991b2eb74799a6da752a6`  
		Last Modified: Thu, 11 Aug 2016 22:15:12 GMT  
		Size: 583.0 B
	-	`sha256:5896f51594010dc090609c230b5125345af60a35bec1adb643a1bf02363118ad`  
		Last Modified: Thu, 11 Aug 2016 22:15:59 GMT  
		Size: 538.0 B
	-	`sha256:44e2621e102539b8b6e012d5bfbf49645f87d54c5fbd4353a2e3ecd27699461c`  
		Last Modified: Thu, 11 Aug 2016 22:15:58 GMT  
		Size: 455.0 B
	-	`sha256:6ed79e14dcf80cb1b83f81e3a8a756f338c4aa1ff76683b6174dad27af0cecd8`  
		Last Modified: Thu, 11 Aug 2016 22:16:07 GMT  
		Size: 60.9 MB (60922142 bytes)
	-	`sha256:f6652df1a3d2732873c804320b5587c9e71d807ac5fca4572c90c9b6fa617092`  
		Last Modified: Thu, 11 Aug 2016 22:16:25 GMT  
		Size: 900.0 B
	-	`sha256:73e3b97b0d1835132964a1d2f70ed4164b8a98de46155701a7cf7f90faa6bb14`  
		Last Modified: Thu, 11 Aug 2016 22:16:31 GMT  
		Size: 42.2 MB (42231858 bytes)

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
