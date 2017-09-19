## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:595d95b7288b8e27424615eff1d4f468c7cb3c233c1cf668c4a88a50cd420b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:6eca31b62b906e76d49325c79733f8da4c526d0bf2f493a1cfe888b44e909882
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112178818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fed12e3b3c6c28b25ff82ed007fb1d30779a611387c156de55e495e1e4d491`
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
# Mon, 18 Sep 2017 23:52:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2e2708187657c91d82e3641afd844b283c312ba680234d70e4a4a23316282efe';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='83c6c959a18f92c5fab9c0d70bc698e1aacd90e4f9aa1f41f9a2a78a0d31ec99';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='910f1f4079793f497ada5c31c3261229da403a1534330840a6af8c40ab1d8f01';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a274ff213f25ffefcd3aff51bbf9f8dd8c2d19b29e344fb6146f8b27beaf2748';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='a6c4fc3822305d80db4fe0034b5a492c0e6230da1f6e8850b9d0837820a56d7d';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:52:28 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
	-	`sha256:6664cead213b954afb04b0fb7599024c70cbb1e38369877778eec2a65a483e57`  
		Last Modified: Mon, 18 Sep 2017 23:59:20 GMT  
		Size: 61.6 MB (61569615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:2fe925dbf8a96eacfa4ee73ac58dd8e2481f2c89aa5e7de52e9be838e0b995e7
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109349770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ea724b89f9578c1c8bb9930d9666ec2a4109da40917e892c37b3e186766926`
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
# Mon, 18 Sep 2017 23:59:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2e2708187657c91d82e3641afd844b283c312ba680234d70e4a4a23316282efe';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='83c6c959a18f92c5fab9c0d70bc698e1aacd90e4f9aa1f41f9a2a78a0d31ec99';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='910f1f4079793f497ada5c31c3261229da403a1534330840a6af8c40ab1d8f01';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a274ff213f25ffefcd3aff51bbf9f8dd8c2d19b29e344fb6146f8b27beaf2748';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='a6c4fc3822305d80db4fe0034b5a492c0e6230da1f6e8850b9d0837820a56d7d';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:59:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
	-	`sha256:d40d9669c1ef752136875ee8dafaa149765dded79017e9383e6bc22199454ae9`  
		Last Modified: Tue, 19 Sep 2017 00:09:40 GMT  
		Size: 58.6 MB (58611983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b7a88af108f02aa273df07174262b020b03882926ef257a656a09ca580f80f3e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117525049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e62f912f0dc4fb25d9a64b4bd5170ef6d8e886055f25f0af91e72aee0d71b33`
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
# Mon, 18 Sep 2017 23:58:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2e2708187657c91d82e3641afd844b283c312ba680234d70e4a4a23316282efe';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='83c6c959a18f92c5fab9c0d70bc698e1aacd90e4f9aa1f41f9a2a78a0d31ec99';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='910f1f4079793f497ada5c31c3261229da403a1534330840a6af8c40ab1d8f01';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a274ff213f25ffefcd3aff51bbf9f8dd8c2d19b29e344fb6146f8b27beaf2748';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='a6c4fc3822305d80db4fe0034b5a492c0e6230da1f6e8850b9d0837820a56d7d';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:58:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
	-	`sha256:c750b0c81b544803dbb25e74819be21de2c5610c57f1b0aaa15c268cd7a64886`  
		Last Modified: Tue, 19 Sep 2017 00:16:12 GMT  
		Size: 65.0 MB (65008167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:908a419b4a8838577d837a79347e2048ab4e2926c8e5c8f2e3d99c257577a578
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111134298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16724b5ff66cb1952237004d30a5e52b1261c054648634e34f72c9437f69b655`
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
# Mon, 18 Sep 2017 23:54:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2e2708187657c91d82e3641afd844b283c312ba680234d70e4a4a23316282efe';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='83c6c959a18f92c5fab9c0d70bc698e1aacd90e4f9aa1f41f9a2a78a0d31ec99';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='910f1f4079793f497ada5c31c3261229da403a1534330840a6af8c40ab1d8f01';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a274ff213f25ffefcd3aff51bbf9f8dd8c2d19b29e344fb6146f8b27beaf2748';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='a6c4fc3822305d80db4fe0034b5a492c0e6230da1f6e8850b9d0837820a56d7d';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:54:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
	-	`sha256:643a170c4cc5dd97bb2992a8cb9a184a105a25d08d2ff4050dee551c1089923b`  
		Last Modified: Tue, 19 Sep 2017 00:07:46 GMT  
		Size: 62.0 MB (62038153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
