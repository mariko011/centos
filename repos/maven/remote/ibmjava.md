## `maven:ibmjava`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
