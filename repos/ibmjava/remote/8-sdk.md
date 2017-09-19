## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:c38dd09788c068112719f1e38e10401917b301563c96fe9ed64c479568d5d2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:6cdda0a848a63ddbc55ecb324a9ed86ad5405aaa606c63df495277807503334e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214819847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e637befb3d4c9c0d2faeab22b069dce5c65ccce3091273d69fe4874db11876c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:51:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:51:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:51:14 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:53:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b45066ab6ae61b9a7b78b8828dc6f0dcd82ead18b120107c8f523c314592a1a8';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='52f54e1a4911f3a2123ea3e034818a1e8b2e707455ffb7dd9b104b6c5b4c38a6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6e5ebc6791a16e62be541c28a788884ac91f4a6b8441f2eabc04ebb3dd8278b5';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f2aec41f74441a829e5bbbc62f14dc8dd85d8a256c2d6e46ec4e8c071f3b23ed';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:53:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40ffc91f8064c091f3818d0ab995d4250fb8f3b00ebb52a14a5512d6d647217`  
		Last Modified: Mon, 18 Sep 2017 23:57:15 GMT  
		Size: 3.1 MB (3070464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502e7b1e0b186ca096feea6b0b76f58732ae6970004984624ee5bd805a425ffc`  
		Last Modified: Mon, 18 Sep 2017 23:59:55 GMT  
		Size: 164.2 MB (164210644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:0175a5129b07b1124d6254a8a6fa45240d1566de2d3c23035d6055dcffc2c5d5
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201677262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce9f708e1196e164d808e8545bff152d2f6a00a49c722dfecfca0534d31ef50`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:38 GMT
ADD file:d48640b00d2030cbcef998e352c46f64322de00f9b48b015c7a649a7e9f9b1c0 in / 
# Mon, 18 Sep 2017 23:38:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:41 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:58:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:58:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:58:32 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Tue, 19 Sep 2017 00:00:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b45066ab6ae61b9a7b78b8828dc6f0dcd82ead18b120107c8f523c314592a1a8';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='52f54e1a4911f3a2123ea3e034818a1e8b2e707455ffb7dd9b104b6c5b4c38a6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6e5ebc6791a16e62be541c28a788884ac91f4a6b8441f2eabc04ebb3dd8278b5';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f2aec41f74441a829e5bbbc62f14dc8dd85d8a256c2d6e46ec4e8c071f3b23ed';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 19 Sep 2017 00:00:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:be13f692d8c621a704b1caea34cb5f28fed77bf385b3fe4ea74f6532ea3f99b4`  
		Last Modified: Mon, 18 Sep 2017 15:38:38 GMT  
		Size: 47.8 MB (47812193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797352355bb152ea0fdaca2ebc1c21ba91258811be4174ce4a79a49f9fd8a139`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebf35bf0f20205a0f77c9af83d132fbfd2860166960952d64ba2dc21a54905d`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499061be31e87ecf0c40c8a86a44b4b9f20524903f08e6233e110e65328338e2`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4be7379ba51f1f1a5f7121eb0378f0c9a0309fbf7d6433c71b9ca658c51586`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350d3a6571d1610c2b687e97db12522570d39c68dbc9bfc0b3fff0efba0ef149`  
		Last Modified: Tue, 19 Sep 2017 00:08:48 GMT  
		Size: 2.9 MB (2923211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435461ddc5cd83367393807c9ef2f4ae25296ddf88b5d29c119b3d503db03908`  
		Last Modified: Tue, 19 Sep 2017 00:10:12 GMT  
		Size: 150.9 MB (150939475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:6065b37d7ff0708662dbf646e5b297e7ed4fc558a34618d36ab0150a5f24a2f1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228765964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b34c257215be6f8f9ac77af4df631c2c58474777d2ab00b7fad3b1028dadac2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:10 GMT
ADD file:166742117a8e93b6503d54fec46467c136e204dcb8c35d31b0cf422761ed342f in / 
# Mon, 18 Sep 2017 23:35:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:35:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:35:32 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:55:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:55:10 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Tue, 19 Sep 2017 00:01:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b45066ab6ae61b9a7b78b8828dc6f0dcd82ead18b120107c8f523c314592a1a8';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='52f54e1a4911f3a2123ea3e034818a1e8b2e707455ffb7dd9b104b6c5b4c38a6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6e5ebc6791a16e62be541c28a788884ac91f4a6b8441f2eabc04ebb3dd8278b5';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f2aec41f74441a829e5bbbc62f14dc8dd85d8a256c2d6e46ec4e8c071f3b23ed';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 19 Sep 2017 00:01:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:78ce7db4c3bca9744cdcf93b3f1f6f9953ea6b132224a828988e6c2a430c9405`  
		Last Modified: Mon, 18 Sep 2017 23:37:27 GMT  
		Size: 49.6 MB (49589011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623dedb068d17490ebe0472376f5c6f72ce59e28f4be29cf635fed215565f96f`  
		Last Modified: Mon, 18 Sep 2017 23:37:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50564ef76bfd5864705e18a255d8ec5404ea5336424343840ca26559c5871bf2`  
		Last Modified: Mon, 18 Sep 2017 23:37:13 GMT  
		Size: 651.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb711d0eb7b437633cef81a629aa1445475b44748e9afb011d3ae087cddb00c`  
		Last Modified: Mon, 18 Sep 2017 23:37:14 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b721c801929694b506d76283f13c4a0a9f4246fdb2100598afacb0ce7c5899`  
		Last Modified: Mon, 18 Sep 2017 23:37:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942c364c907edfcdb30af22d914dc159fbe9c32b9491efd67d25b7bd57f5a25c`  
		Last Modified: Tue, 19 Sep 2017 00:15:01 GMT  
		Size: 2.9 MB (2925344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373f091a15d0ffc7e8ef5c08a25f75e2e416604dac8c1f86305f7bbcb67c439e`  
		Last Modified: Tue, 19 Sep 2017 00:17:06 GMT  
		Size: 176.2 MB (176249082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:888e03c36099712e4b8681ec1135678738aff28534f2d6fff00e8a5633ce84a3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (203992872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239035b71f767ed617d937ea5d29ca3ba839c29856163e22b91349cb102cf52b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:35 GMT
ADD file:dc38d822d5d846f68669d70bb363f7140284a7c5cc63886eb7e7aa7cca3b4be9 in / 
# Mon, 18 Sep 2017 23:33:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:38 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:50:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:50:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:50:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:57:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b45066ab6ae61b9a7b78b8828dc6f0dcd82ead18b120107c8f523c314592a1a8';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='52f54e1a4911f3a2123ea3e034818a1e8b2e707455ffb7dd9b104b6c5b4c38a6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6e5ebc6791a16e62be541c28a788884ac91f4a6b8441f2eabc04ebb3dd8278b5';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f2aec41f74441a829e5bbbc62f14dc8dd85d8a256c2d6e46ec4e8c071f3b23ed';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:57:28 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f5e8251b894350dd431d405ba10d18ad69f483861bc4b50e35e6451448485122`  
		Last Modified: Mon, 18 Sep 2017 23:34:31 GMT  
		Size: 46.3 MB (46283368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d9a79c478b51b88d50770b5cd8eb9fa93aef62215129bbc28afd09d293cf7a`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659d0afbaf4bf9ab0a9d3929ac44433ec615f07bdc0e7aeccc0ad450b9c459b0`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44737872969f923172ecc9fdda10a9e9b2050b9eaced49674b70015dd9e9a9da`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c2a61c2b6f00d87cb17b57c583babfa8e8dcb35d1c3c903f4f392dc44b62fc`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd135753bfc6fc1fd3901a140df3a7ef46b905e8136caa905493449e582893`  
		Last Modified: Tue, 19 Sep 2017 00:07:02 GMT  
		Size: 2.8 MB (2810281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13670283d2619256f3188041f48d861bf7468a804d34cd7d65767d7edc0202ce`  
		Last Modified: Tue, 19 Sep 2017 00:08:11 GMT  
		Size: 154.9 MB (154896727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
