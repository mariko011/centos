## `maven:3-ibmjava-9`

```console
$ docker pull maven@sha256:7b845c5c89f3846b168e928eaf12939e3c7abbe649c2cc6761eaae8f3a0e1052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-ibmjava-9` - linux; amd64

```console
$ docker pull maven@sha256:57008cfdbca456741e49de450892f65162ea9ab3b56f332ace3c1cf9f36d026b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364707082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82482fb3c1b6ee406a744d7aab61fb42100d8e8383d25d7bb1ff123cae903536`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 17:05:41 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 04 Nov 2017 17:05:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:10:27 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Sat, 04 Nov 2017 17:11:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 04 Nov 2017 17:11:38 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:20:18 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 17:20:19 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 17:20:19 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 17:20:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 17:20:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 17:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 17:20:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Nov 2017 17:20:32 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 17:20:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 17:20:33 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 17:20:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 17:20:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0c1b1fa21160c2d342c6b5943e64befab4c556ccc0a7d3dc9b08d344011228`  
		Last Modified: Sat, 04 Nov 2017 17:11:57 GMT  
		Size: 3.0 MB (3020894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc50d48703bbffd710e8a52246c89fe3228696c39b4056a024b57d4c080fb2d`  
		Last Modified: Sat, 04 Nov 2017 17:12:19 GMT  
		Size: 271.6 MB (271634159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbaa8fa320cf995a6214885065e384e7a28a01882e6ac59e66881b69d95f4bd`  
		Last Modified: Sat, 04 Nov 2017 17:28:50 GMT  
		Size: 42.4 MB (42431320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca78ce7bfdbea46b5fb8e3d452a4920c9d7690c910629640061b7119fb5186c`  
		Last Modified: Sat, 04 Nov 2017 17:28:45 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6009ab8844594f11667ce6c48ec2deb15056e5ad4b80851a73edf904aef48a`  
		Last Modified: Sat, 04 Nov 2017 17:28:46 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-9` - linux; 386

```console
$ docker pull maven@sha256:200e51f4e0398a14b53f00b32c9953ef8ffe52a0ba2e8ee9311845e29d2649c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.1 MB (346092495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29355d2ddf19f90d8d4519867df2d631a83086f6412eda153d0f9b6f3892d28c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:17:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 04:17:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 04:27:46 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 11 Oct 2017 04:28:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 11 Oct 2017 04:32:22 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 31 Oct 2017 01:51:14 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 01:51:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 01:51:15 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 01:51:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 01:51:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 01:51:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 01:51:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 01:51:28 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 01:51:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 01:51:28 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 01:51:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 01:51:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc4b2148d6f3b0d30ba2b655afd84e3df87fb63910cac4fe2bd7ff7f9754b8d`  
		Last Modified: Wed, 11 Oct 2017 04:34:03 GMT  
		Size: 2.9 MB (2876479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1905adb31eb4f62efdd94558522040acc89a7a3289a6f99033aa2869ac417f1`  
		Last Modified: Wed, 11 Oct 2017 04:36:10 GMT  
		Size: 251.5 MB (251467585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac6b0caec52a682274613ad5f9ba25a751e767320be292faa8b5d7179216a0e`  
		Last Modified: Tue, 31 Oct 2017 01:57:20 GMT  
		Size: 43.9 MB (43870479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54098477293e09ee016572284218a6222cbcd98ad6536b15b14dccf03b3562c`  
		Last Modified: Tue, 31 Oct 2017 01:57:16 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09557a797273cf189d8123685ef154d99b23877b4e267a3dc6b68691289ca52`  
		Last Modified: Tue, 31 Oct 2017 01:57:16 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-9` - linux; ppc64le

```console
$ docker pull maven@sha256:962443f1fd1cad47013116991c333a675f211de4c69196ca9697e4ecb956d7cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.1 MB (386087636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ef11e2d1a154a4a29f40d4dce1b6ca9c1f72ec310c6129408c8fcd345ba27`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 17 Nov 2017 22:36:25 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Fri, 17 Nov 2017 22:42:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 17 Nov 2017 22:42:43 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:05:16 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 17 Nov 2017 23:05:20 GMT
ARG USER_HOME_DIR=/root
# Fri, 17 Nov 2017 23:05:29 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 17 Nov 2017 23:05:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 17 Nov 2017 23:07:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 17 Nov 2017 23:07:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 17 Nov 2017 23:08:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 17 Nov 2017 23:08:11 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 17 Nov 2017 23:08:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 17 Nov 2017 23:08:15 GMT
VOLUME [/root/.m2]
# Fri, 17 Nov 2017 23:08:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 17 Nov 2017 23:08:20 GMT
CMD ["mvn"]
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
	-	`sha256:683e4f95728fe788cb12fe0f471459b13805a3feb070098e361ce9b723501626`  
		Last Modified: Fri, 17 Nov 2017 22:45:47 GMT  
		Size: 292.0 MB (291957840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f7c9e45429e6b98ec91a3ab9cbdcb0828e400eba76910502b824945df05c36`  
		Last Modified: Fri, 17 Nov 2017 23:10:39 GMT  
		Size: 41.5 MB (41528388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2325c77b2885c8a6c577bbb0cc93edb18d6476fed245358339f36ef4832b4956`  
		Last Modified: Fri, 17 Nov 2017 23:09:48 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7acbf76c334997affdc7928c370c86c4c2eaebb88ddc38acdd39e5e346e1f6`  
		Last Modified: Fri, 17 Nov 2017 23:09:48 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-ibmjava-9` - linux; s390x

```console
$ docker pull maven@sha256:394ffe98ca25034eea33bd854fb6417b8580bc9ee88a29c0c2e468910dc62190
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.8 MB (363803274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb46a63e98e4936fa27261177716455b42a177a8a635a0c04e7eda1c98dbbd3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 17 Nov 2017 22:28:38 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Fri, 17 Nov 2017 22:32:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 17 Nov 2017 22:32:50 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 22:52:11 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 17 Nov 2017 22:52:11 GMT
ARG USER_HOME_DIR=/root
# Fri, 17 Nov 2017 22:52:11 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 17 Nov 2017 22:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 17 Nov 2017 22:52:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 17 Nov 2017 22:52:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 17 Nov 2017 22:52:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 17 Nov 2017 22:52:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 17 Nov 2017 22:52:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 17 Nov 2017 22:52:25 GMT
VOLUME [/root/.m2]
# Fri, 17 Nov 2017 22:52:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 17 Nov 2017 22:52:29 GMT
CMD ["mvn"]
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
	-	`sha256:0e857065eee200f4628d5caef3df4f65e7d4ff8b6d3653b0aed8b66651aa2731`  
		Last Modified: Fri, 17 Nov 2017 22:34:59 GMT  
		Size: 274.7 MB (274685904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1128aeee148aeaafa05da2dab010556b8d36fb9bc0f2efda2e55c214258ee`  
		Last Modified: Fri, 17 Nov 2017 22:53:35 GMT  
		Size: 39.9 MB (39927796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377c1d474f1847e6c6023075fae80f466a66b2044299ad2018e77e4d6d2e2c5f`  
		Last Modified: Fri, 17 Nov 2017 22:53:30 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fd0cf2e4cb303c4e5aef6c8a5c39ef75de124b02804e6e8daa6b8c6d5b2e79`  
		Last Modified: Fri, 17 Nov 2017 22:53:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
