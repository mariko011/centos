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
