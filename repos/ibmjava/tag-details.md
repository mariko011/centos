<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ibmjava`

-	[`ibmjava:8`](#ibmjava8)
-	[`ibmjava:8-jre`](#ibmjava8-jre)
-	[`ibmjava:8-jre-alpine`](#ibmjava8-jre-alpine)
-	[`ibmjava:8-sdk`](#ibmjava8-sdk)
-	[`ibmjava:8-sdk-alpine`](#ibmjava8-sdk-alpine)
-	[`ibmjava:8-sfj`](#ibmjava8-sfj)
-	[`ibmjava:8-sfj-alpine`](#ibmjava8-sfj-alpine)
-	[`ibmjava:9-sdk`](#ibmjava9-sdk)
-	[`ibmjava:9-sdk-alpine`](#ibmjava9-sdk-alpine)
-	[`ibmjava:jre`](#ibmjavajre)
-	[`ibmjava:jre-alpine`](#ibmjavajre-alpine)
-	[`ibmjava:latest`](#ibmjavalatest)
-	[`ibmjava:sdk`](#ibmjavasdk)
-	[`ibmjava:sdk-alpine`](#ibmjavasdk-alpine)
-	[`ibmjava:sfj`](#ibmjavasfj)
-	[`ibmjava:sfj-alpine`](#ibmjavasfj-alpine)

## `ibmjava:8`

```console
$ docker pull ibmjava@sha256:c8d05b2a55d7d126a0e1b7e8210b48c923d1a5e87e9365a1cf8e48e195f6fe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8` - linux; amd64

```console
$ docker pull ibmjava@sha256:887cb2675f5c35a85f55eed3d928feea83d2c7d989bb878f7eab54aea1cca109
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170347330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10806812263cba78c0270ca8b290fa886e1c35a9e2adbcbd5086186949272aa1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:46:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a19102e4dc978c1e8a30d83c3bd54fc5f75927859edf2efb1d211e2169d900`  
		Last Modified: Wed, 20 Dec 2017 18:06:49 GMT  
		Size: 124.6 MB (124580649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; 386

```console
$ docker pull ibmjava@sha256:488dfec598c273e1b7da25b60164606b1f04e281fe40d352795605a554a3c66a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159321480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd8c8b2ebb4a8b7ab6e71c95b63ee368fbb7c2da92d11eeb4d0df8bf16fadb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:13:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:15:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f420fef0ad95a18cb70012da8370da912c3e95cf64983e926d1e9f8ba32400c`  
		Last Modified: Thu, 21 Dec 2017 17:33:30 GMT  
		Size: 113.3 MB (113344255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:016efde8376276fa71cc05b9c175e856474219691ac87c8f4b5d4bb94ee1460f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186256811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2256d879718a7c7d42ced2a57f3244b1209f8cd043d54cc12d25fcea07ab4c3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:25:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d752490eaa0f3f3c8936febd30fc264b74ba69fbe720a93a55f5f9e5541113e`  
		Last Modified: Thu, 21 Dec 2017 16:30:23 GMT  
		Size: 138.2 MB (138167532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:4383321dbecbc92518b52ad331a0ad2c39f31c8deb5a9f77980bceff0d1f1dc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168765714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb67998bbece05876151b964c32a0a01b89b920a20f9fab50a29b1a2b1ec339`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d1d63ff421172267a8d69b7b850c81b80b4a8dd380fe05303378b9e0c9de95`  
		Last Modified: Sun, 07 Jan 2018 09:49:54 GMT  
		Size: 124.1 MB (124120168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:c8d05b2a55d7d126a0e1b7e8210b48c923d1a5e87e9365a1cf8e48e195f6fe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:887cb2675f5c35a85f55eed3d928feea83d2c7d989bb878f7eab54aea1cca109
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170347330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10806812263cba78c0270ca8b290fa886e1c35a9e2adbcbd5086186949272aa1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:46:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a19102e4dc978c1e8a30d83c3bd54fc5f75927859edf2efb1d211e2169d900`  
		Last Modified: Wed, 20 Dec 2017 18:06:49 GMT  
		Size: 124.6 MB (124580649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; 386

```console
$ docker pull ibmjava@sha256:488dfec598c273e1b7da25b60164606b1f04e281fe40d352795605a554a3c66a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159321480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd8c8b2ebb4a8b7ab6e71c95b63ee368fbb7c2da92d11eeb4d0df8bf16fadb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:13:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:15:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f420fef0ad95a18cb70012da8370da912c3e95cf64983e926d1e9f8ba32400c`  
		Last Modified: Thu, 21 Dec 2017 17:33:30 GMT  
		Size: 113.3 MB (113344255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:016efde8376276fa71cc05b9c175e856474219691ac87c8f4b5d4bb94ee1460f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186256811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2256d879718a7c7d42ced2a57f3244b1209f8cd043d54cc12d25fcea07ab4c3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:25:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d752490eaa0f3f3c8936febd30fc264b74ba69fbe720a93a55f5f9e5541113e`  
		Last Modified: Thu, 21 Dec 2017 16:30:23 GMT  
		Size: 138.2 MB (138167532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:4383321dbecbc92518b52ad331a0ad2c39f31c8deb5a9f77980bceff0d1f1dc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168765714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb67998bbece05876151b964c32a0a01b89b920a20f9fab50a29b1a2b1ec339`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d1d63ff421172267a8d69b7b850c81b80b4a8dd380fe05303378b9e0c9de95`  
		Last Modified: Sun, 07 Jan 2018 09:49:54 GMT  
		Size: 124.1 MB (124120168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-jre-alpine`

```console
$ docker pull ibmjava@sha256:e147c147e2c764050cc13127b00599809c8d797bce6d8f19fd71472cd23b94b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-jre-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:cfe7f693ae58cbd9a47431f69c211988bedb021632243cf7bb22662427c623dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131055726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a6bea888e36281b292c0e9ff54f29287d767372a159fc124c36348d4137eae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:47:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:47:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb703dff241d9fffdfa271f5f8792cbe7b434c55a62f44ab8ccd204e78b811ab`  
		Last Modified: Wed, 20 Dec 2017 18:07:50 GMT  
		Size: 124.5 MB (124535642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:6e200d3c363941d0034e18395a41c5eab40c271da26db0eccdbf5cf177310e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:7478ec287604900ef9145dc40a6e91abe7544056a77a067931ac9270efea2a06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208050409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bd0f0e77a0aaa5238694153fa272558b1a965d58e6c88972863f9f5e8b4375`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:49:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:49:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12917b0809d7c7355940524298d5f494693d8e324bddf8cd20c47600447a322a`  
		Last Modified: Wed, 20 Dec 2017 18:09:36 GMT  
		Size: 162.3 MB (162283728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:7c242834607541bf69d35077881e88d600f4f3e218a31af34370a287e7f4c0c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b9b71d1d63007e44870ee2521bf0b2c82840cfb3a0222c7fb4e53023655ec9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:25:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:26:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e6349f1f44def6b3ca9dd936502139f8a3f1e7a02a25cb77060018e5e3cd4d`  
		Last Modified: Thu, 21 Dec 2017 17:39:54 GMT  
		Size: 150.9 MB (150945096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:67781a44533a4fdcb55a0624cd59c700e39e36f711adeb068b90fab5ecd2a82d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224106215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545471ad8bce6e5dcda3b0658a8244eca8c0d7e40e8e21ab78d3c97282c5b137`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:29:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:29:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7f85437e412a02efe97671226dec975a08e0b03c6cda7094eea32b64114da`  
		Last Modified: Thu, 21 Dec 2017 16:31:36 GMT  
		Size: 176.0 MB (176016936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:7b877afde93478bb500e90d6e208885a78a0c34e5da6ccf7b693c7aaac8d15ac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199550613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab0490db71a94bf7b6d5e3606928894f10d53e3e40ea9e7feb7bb6a8ac32b57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:47:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:47:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb298d30c1f397e5b26cce19c9af91bcdc33c8b4c15802f6fce91df31e44f`  
		Last Modified: Sun, 07 Jan 2018 09:50:56 GMT  
		Size: 154.9 MB (154905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:9b956f687864bf1d77136fab8da15b02e70c4a7aa81cb4e4cd3410cc95915bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:2e48f7ed1788ac29674a17c2ac3bd2f0e0c440df20394dd2aadc5da8d56ec9e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168751883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0072d4aa8404fcce53d3e3d65bde1361225704dfbe68f215b40e50b7a0ca4f7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:55:07 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:55:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352431ebcd02812fc4d76789a7474ddefd3483baa3b472186c659a6b134a4292`  
		Last Modified: Wed, 20 Dec 2017 18:10:31 GMT  
		Size: 162.2 MB (162231799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:e8e55d0296fdbf754994b6cce85a473480712a90c8250afbf193dc0bd48cc0e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:c24ba8481da1d0e7a9db0cca4ec24b39d31ca2ca67ec79606653bf75c962cc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105212758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7aac109413a903810c5cea12dca3e0a421a93d1f676843fb7092dfbe4829168`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:48:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:48:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4aa518909e499b8f4a9193c8e78056285a663565d43bec6bea971966bf4add`  
		Last Modified: Wed, 20 Dec 2017 18:08:20 GMT  
		Size: 59.4 MB (59446077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:000d863acbb597735efd2f85f01d301be8e86f3e07d74670af31f81057cdfe02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104472629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50df0a913d8c1bc30810c1ee87593c338a7c491a10c355683ba7f335be8e8f66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:21:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:22:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed519313c2e9eb51efe16f34b5f342c1c13f03418f744c9d7900d330fdc3734e`  
		Last Modified: Thu, 21 Dec 2017 17:35:25 GMT  
		Size: 58.5 MB (58495404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:2750c234d8d4f9bc9bc83a2ee8fb1f6d3140867309990e47b9566de72ce8e6f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112830701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aaef87dbc1572bca79266bd6bb77b4db3b01fcd2219497476071ba6315b99ab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:26:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:26:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35195c0ae3afbfa2164c07d5341ae770eda14f7ed5224b3cf64bf7f7551b19f`  
		Last Modified: Thu, 21 Dec 2017 16:30:56 GMT  
		Size: 64.7 MB (64741422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:d89fa5fc72130e2ef409a0290ad16a000a8fa9c23ea05ba92e6dd3c24543be04
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106549644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049d5e3f82cca1cfe6b0de7ec91f940c2fa073c06b1cbd20e7ae8ba6d9518a81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:46 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed802a6364135c4a106e4478f2a89ea615c2a1f65744e5e53d98493f14a0c6bc`  
		Last Modified: Sun, 07 Jan 2018 09:50:26 GMT  
		Size: 61.9 MB (61904098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:9c0d5ff328bbdbb37eb92a4080228ca9fd7a8e9882d010ad189e0dbfd417130a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:5dc12c45745bf9366883f5209022ae3b12161a3286662909bbf7cb2535938a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65965927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e10aa7dca80c4643cb7a748bb61f2034c33c6f5c3bca3e09a1bc0a869503765`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:48:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:48:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81bc41594c95732191fc4de4f04b3aecb7c28dce8985869c735ff4a9436b5b`  
		Last Modified: Wed, 20 Dec 2017 18:08:52 GMT  
		Size: 59.4 MB (59445843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:9-sdk`

```console
$ docker pull ibmjava@sha256:30a415f41d7746c394e87c9d32bebe2b80eb1f48086f68229c470d8692b43a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:9-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:a931193976d16feba1736cbee92c4dbe802309510d3c406b40360817d2d50e76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317401152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20fb01847df2818e5e15e49d9588094cf491c76bcbc46b088f4e27ae771a3b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:56:28 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Thu, 14 Dec 2017 21:57:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 14 Dec 2017 21:59:51 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621a0c34a6bd49e121d1b418db2f5d00d47426e6757fc91c5954d5d245c3f28`  
		Last Modified: Thu, 14 Dec 2017 22:05:07 GMT  
		Size: 271.6 MB (271634471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:9-sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:b57af438fc7b6a70f48112eefcbfa4581feb9527a2ba3c844ad976f18978c4f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297445217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375fb0004f9a982662db6773747486dda93c7f992230a739a2b983f3692ca52b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 05:36:07 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Fri, 15 Dec 2017 05:37:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 15 Dec 2017 05:47:39 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c505c542eb8c22a6d94bbcda4bd271a5224b3541a27e12022e9b46fce4bdf07`  
		Last Modified: Fri, 15 Dec 2017 05:59:19 GMT  
		Size: 251.5 MB (251467992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:9-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:e0e39b409d61b855903520d571416bc4961bfc1a1e7b8a41c3f9558667f35261
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340046974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c72ae54bc9b0d584965590ea0812eade6473cd64ffa6dd50fe60a2a2efd3627`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:09:50 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Fri, 15 Dec 2017 04:18:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 15 Dec 2017 04:18:39 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc6fb618095bdf5bd8ab8fd8108b6b8496ba936bb5e18155ae7e18b4793961`  
		Last Modified: Fri, 15 Dec 2017 04:21:32 GMT  
		Size: 292.0 MB (291957695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:9-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:a8db2691463b4fc32e5c4a863a1e63f3cf767989b6d5a3e9398964469d8ec530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319329863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da63306dd63ef6bdc1dad6b7e62eacf3a25a3ac34739f3119f7a0c1e17a5417`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:47:45 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Sun, 07 Jan 2018 09:49:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sun, 07 Jan 2018 09:49:14 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03f5f43748dd01ccc87b8b367d0a909d1e651155b147fd1c7616acf5262ab42`  
		Last Modified: Sun, 07 Jan 2018 09:51:34 GMT  
		Size: 274.7 MB (274684317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:9-sdk-alpine`

```console
$ docker pull ibmjava@sha256:36bd6eb692d8eb9753c7d77da2d3a1cf2fb2b6f8e64bcca7bab04dd53e1433fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:9-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:6e6ec9386b453488dc4c18af30963cd13cea1d57c4d9aac41bd1232fb69bce76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278154521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36d1496254b4f7357d6e51f11c3315edb51509e4ae575bdba909102fbb053cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Dec 2017 20:53:52 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Fri, 01 Dec 2017 20:55:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Dec 2017 20:57:17 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57b7b42bc459c1cddfa8cca71bd8ec21a6fbcaeb6923192f7c126955a0769f1`  
		Last Modified: Fri, 01 Dec 2017 21:02:31 GMT  
		Size: 271.6 MB (271634437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:c8d05b2a55d7d126a0e1b7e8210b48c923d1a5e87e9365a1cf8e48e195f6fe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:887cb2675f5c35a85f55eed3d928feea83d2c7d989bb878f7eab54aea1cca109
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170347330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10806812263cba78c0270ca8b290fa886e1c35a9e2adbcbd5086186949272aa1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:46:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a19102e4dc978c1e8a30d83c3bd54fc5f75927859edf2efb1d211e2169d900`  
		Last Modified: Wed, 20 Dec 2017 18:06:49 GMT  
		Size: 124.6 MB (124580649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; 386

```console
$ docker pull ibmjava@sha256:488dfec598c273e1b7da25b60164606b1f04e281fe40d352795605a554a3c66a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159321480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd8c8b2ebb4a8b7ab6e71c95b63ee368fbb7c2da92d11eeb4d0df8bf16fadb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:13:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:15:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f420fef0ad95a18cb70012da8370da912c3e95cf64983e926d1e9f8ba32400c`  
		Last Modified: Thu, 21 Dec 2017 17:33:30 GMT  
		Size: 113.3 MB (113344255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:016efde8376276fa71cc05b9c175e856474219691ac87c8f4b5d4bb94ee1460f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186256811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2256d879718a7c7d42ced2a57f3244b1209f8cd043d54cc12d25fcea07ab4c3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:25:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d752490eaa0f3f3c8936febd30fc264b74ba69fbe720a93a55f5f9e5541113e`  
		Last Modified: Thu, 21 Dec 2017 16:30:23 GMT  
		Size: 138.2 MB (138167532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:4383321dbecbc92518b52ad331a0ad2c39f31c8deb5a9f77980bceff0d1f1dc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168765714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb67998bbece05876151b964c32a0a01b89b920a20f9fab50a29b1a2b1ec339`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d1d63ff421172267a8d69b7b850c81b80b4a8dd380fe05303378b9e0c9de95`  
		Last Modified: Sun, 07 Jan 2018 09:49:54 GMT  
		Size: 124.1 MB (124120168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:jre-alpine`

```console
$ docker pull ibmjava@sha256:e147c147e2c764050cc13127b00599809c8d797bce6d8f19fd71472cd23b94b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:jre-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:cfe7f693ae58cbd9a47431f69c211988bedb021632243cf7bb22662427c623dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131055726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a6bea888e36281b292c0e9ff54f29287d767372a159fc124c36348d4137eae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:47:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:47:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb703dff241d9fffdfa271f5f8792cbe7b434c55a62f44ab8ccd204e78b811ab`  
		Last Modified: Wed, 20 Dec 2017 18:07:50 GMT  
		Size: 124.5 MB (124535642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:c8d05b2a55d7d126a0e1b7e8210b48c923d1a5e87e9365a1cf8e48e195f6fe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:latest` - linux; amd64

```console
$ docker pull ibmjava@sha256:887cb2675f5c35a85f55eed3d928feea83d2c7d989bb878f7eab54aea1cca109
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170347330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10806812263cba78c0270ca8b290fa886e1c35a9e2adbcbd5086186949272aa1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:46:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a19102e4dc978c1e8a30d83c3bd54fc5f75927859edf2efb1d211e2169d900`  
		Last Modified: Wed, 20 Dec 2017 18:06:49 GMT  
		Size: 124.6 MB (124580649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; 386

```console
$ docker pull ibmjava@sha256:488dfec598c273e1b7da25b60164606b1f04e281fe40d352795605a554a3c66a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159321480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd8c8b2ebb4a8b7ab6e71c95b63ee368fbb7c2da92d11eeb4d0df8bf16fadb4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:13:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:15:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f420fef0ad95a18cb70012da8370da912c3e95cf64983e926d1e9f8ba32400c`  
		Last Modified: Thu, 21 Dec 2017 17:33:30 GMT  
		Size: 113.3 MB (113344255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:016efde8376276fa71cc05b9c175e856474219691ac87c8f4b5d4bb94ee1460f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186256811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2256d879718a7c7d42ced2a57f3244b1209f8cd043d54cc12d25fcea07ab4c3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:25:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d752490eaa0f3f3c8936febd30fc264b74ba69fbe720a93a55f5f9e5541113e`  
		Last Modified: Thu, 21 Dec 2017 16:30:23 GMT  
		Size: 138.2 MB (138167532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:4383321dbecbc92518b52ad331a0ad2c39f31c8deb5a9f77980bceff0d1f1dc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168765714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb67998bbece05876151b964c32a0a01b89b920a20f9fab50a29b1a2b1ec339`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d1d63ff421172267a8d69b7b850c81b80b4a8dd380fe05303378b9e0c9de95`  
		Last Modified: Sun, 07 Jan 2018 09:49:54 GMT  
		Size: 124.1 MB (124120168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:6e200d3c363941d0034e18395a41c5eab40c271da26db0eccdbf5cf177310e7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:7478ec287604900ef9145dc40a6e91abe7544056a77a067931ac9270efea2a06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208050409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bd0f0e77a0aaa5238694153fa272558b1a965d58e6c88972863f9f5e8b4375`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:49:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:49:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12917b0809d7c7355940524298d5f494693d8e324bddf8cd20c47600447a322a`  
		Last Modified: Wed, 20 Dec 2017 18:09:36 GMT  
		Size: 162.3 MB (162283728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:7c242834607541bf69d35077881e88d600f4f3e218a31af34370a287e7f4c0c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b9b71d1d63007e44870ee2521bf0b2c82840cfb3a0222c7fb4e53023655ec9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:25:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:26:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e6349f1f44def6b3ca9dd936502139f8a3f1e7a02a25cb77060018e5e3cd4d`  
		Last Modified: Thu, 21 Dec 2017 17:39:54 GMT  
		Size: 150.9 MB (150945096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:67781a44533a4fdcb55a0624cd59c700e39e36f711adeb068b90fab5ecd2a82d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224106215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545471ad8bce6e5dcda3b0658a8244eca8c0d7e40e8e21ab78d3c97282c5b137`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:29:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:29:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a7f85437e412a02efe97671226dec975a08e0b03c6cda7094eea32b64114da`  
		Last Modified: Thu, 21 Dec 2017 16:31:36 GMT  
		Size: 176.0 MB (176016936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:7b877afde93478bb500e90d6e208885a78a0c34e5da6ccf7b693c7aaac8d15ac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199550613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab0490db71a94bf7b6d5e3606928894f10d53e3e40ea9e7feb7bb6a8ac32b57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:47:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:47:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb298d30c1f397e5b26cce19c9af91bcdc33c8b4c15802f6fce91df31e44f`  
		Last Modified: Sun, 07 Jan 2018 09:50:56 GMT  
		Size: 154.9 MB (154905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sdk-alpine`

```console
$ docker pull ibmjava@sha256:9b956f687864bf1d77136fab8da15b02e70c4a7aa81cb4e4cd3410cc95915bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:2e48f7ed1788ac29674a17c2ac3bd2f0e0c440df20394dd2aadc5da8d56ec9e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168751883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0072d4aa8404fcce53d3e3d65bde1361225704dfbe68f215b40e50b7a0ca4f7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:55:07 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:55:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352431ebcd02812fc4d76789a7474ddefd3483baa3b472186c659a6b134a4292`  
		Last Modified: Wed, 20 Dec 2017 18:10:31 GMT  
		Size: 162.2 MB (162231799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:e8e55d0296fdbf754994b6cce85a473480712a90c8250afbf193dc0bd48cc0e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:c24ba8481da1d0e7a9db0cca4ec24b39d31ca2ca67ec79606653bf75c962cc54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105212758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7aac109413a903810c5cea12dca3e0a421a93d1f676843fb7092dfbe4829168`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:48:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:48:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4aa518909e499b8f4a9193c8e78056285a663565d43bec6bea971966bf4add`  
		Last Modified: Wed, 20 Dec 2017 18:08:20 GMT  
		Size: 59.4 MB (59446077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:000d863acbb597735efd2f85f01d301be8e86f3e07d74670af31f81057cdfe02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104472629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50df0a913d8c1bc30810c1ee87593c338a7c491a10c355683ba7f335be8e8f66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:21:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:22:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed519313c2e9eb51efe16f34b5f342c1c13f03418f744c9d7900d330fdc3734e`  
		Last Modified: Thu, 21 Dec 2017 17:35:25 GMT  
		Size: 58.5 MB (58495404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:2750c234d8d4f9bc9bc83a2ee8fb1f6d3140867309990e47b9566de72ce8e6f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112830701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aaef87dbc1572bca79266bd6bb77b4db3b01fcd2219497476071ba6315b99ab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:26:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:26:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35195c0ae3afbfa2164c07d5341ae770eda14f7ed5224b3cf64bf7f7551b19f`  
		Last Modified: Thu, 21 Dec 2017 16:30:56 GMT  
		Size: 64.7 MB (64741422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:d89fa5fc72130e2ef409a0290ad16a000a8fa9c23ea05ba92e6dd3c24543be04
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106549644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049d5e3f82cca1cfe6b0de7ec91f940c2fa073c06b1cbd20e7ae8ba6d9518a81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:46 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed802a6364135c4a106e4478f2a89ea615c2a1f65744e5e53d98493f14a0c6bc`  
		Last Modified: Sun, 07 Jan 2018 09:50:26 GMT  
		Size: 61.9 MB (61904098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ibmjava:sfj-alpine`

```console
$ docker pull ibmjava@sha256:9c0d5ff328bbdbb37eb92a4080228ca9fd7a8e9882d010ad189e0dbfd417130a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:5dc12c45745bf9366883f5209022ae3b12161a3286662909bbf7cb2535938a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65965927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e10aa7dca80c4643cb7a748bb61f2034c33c6f5c3bca3e09a1bc0a869503765`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 20 Dec 2017 17:46:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:48:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:48:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81bc41594c95732191fc4de4f04b3aecb7c28dce8985869c735ff4a9436b5b`  
		Last Modified: Wed, 20 Dec 2017 18:08:52 GMT  
		Size: 59.4 MB (59445843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
