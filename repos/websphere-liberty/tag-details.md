<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:beta`](#websphere-libertybeta)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:889fe83329e895078febe361ca69afe92decd275f834a15fbd304913b0436fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:d6096af7f9e7a62ada8fadc691bf1e3f1d25e974d6e4032bfa9c8894dc0fd4fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263718281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f629d31c42dcef275ad6e893cdf80c8dfed8f3b5727257a775959a7231dac35`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:48:37 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Sat, 04 Nov 2017 10:48:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:48:49 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Sat, 04 Nov 2017 10:49:12 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 04 Nov 2017 10:49:12 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:49:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:49:14 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:49:15 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:49:16 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 04 Nov 2017 10:49:16 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:49:16 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21e72f58313791988ed3b16e7b1cca8fb9bb2fbd3801bded93fe9196735db17`  
		Last Modified: Sat, 04 Nov 2017 10:50:57 GMT  
		Size: 421.9 KB (421950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179af5b722c5f561cfa7c77313a560dae07bb411d469cd121223db2b25f2910d`  
		Last Modified: Sat, 04 Nov 2017 10:51:03 GMT  
		Size: 88.0 MB (88046084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ef086fdc3ac44f7a33cacf66cee09d44b7720f6277d5ecce94c0ee3c701d96`  
		Last Modified: Sat, 04 Nov 2017 10:50:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bed8155dbc59a791392c225dffaa1d372d6ba1481918e9654bf403899b617e`  
		Last Modified: Sat, 04 Nov 2017 10:50:56 GMT  
		Size: 2.2 KB (2208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e96e3a142907fea7d338f2c347a40dea3daaa15d6c2f89a1c763ced4905997e`  
		Last Modified: Sat, 04 Nov 2017 10:50:56 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:3df4ebf410af30b4788747a28de439a60f7d7ac687a1eba84a7c63ae9b424e5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252609331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3323a33e2a5bf4c1582495f81e7626e676e88233a0276262d6f27f2ac9b3c889`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:57:50 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Sat, 28 Oct 2017 13:57:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:57:59 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Sat, 28 Oct 2017 13:58:07 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 28 Oct 2017 13:58:08 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:58:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:58:09 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:58:10 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:58:10 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 28 Oct 2017 13:58:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:58:10 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457a4c30ac6847cb86a22f837b6f183965dbc33faeb46480315a69f88399d19`  
		Last Modified: Sat, 28 Oct 2017 13:59:41 GMT  
		Size: 421.0 KB (421002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3f72bbcf68615a000e3f2aca48c73df4d46a798e996074d013f91bbbd01bd`  
		Last Modified: Sat, 28 Oct 2017 13:59:47 GMT  
		Size: 88.0 MB (88046070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9d9dda8b708e47a2b3abea1409f18e9627ccccc4264d874592f817f4c6e389`  
		Last Modified: Sat, 28 Oct 2017 13:59:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b927ec8343364ede1460d2a323b71687d180a503715596f7b19dac6ee821183`  
		Last Modified: Sat, 28 Oct 2017 13:59:41 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbec1bd31a9fed61415f4569abe61a4452e1b6cbac71245a5d18773a8c57f7b`  
		Last Modified: Sat, 28 Oct 2017 13:59:41 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:7c3df0136717d201b6e9f7a6241dabc7454c88175d2033274e448d002892d2e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279456894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c99a88d00ec35e37cc0398ce58ad592418d883f1fadd0b559b45b4a708a0d5b`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:56:43 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Sat, 28 Oct 2017 15:57:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:57:42 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Sat, 28 Oct 2017 15:58:44 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 28 Oct 2017 15:58:45 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:58:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:58:52 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:58:56 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:58:57 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 28 Oct 2017 15:58:59 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:59:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d43cd2a75e5237d226a9b2fd9733b6a2c99428a44affd1d5b618b8009e06156`  
		Last Modified: Sat, 28 Oct 2017 16:00:43 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82541409ff78069f8e272412b85bb958de67ecc456236712819c22e11d91f317`  
		Last Modified: Sat, 28 Oct 2017 16:00:53 GMT  
		Size: 88.0 MB (88046145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ee076ef43888b3c60d39119fd7603904102025f64963a2a9f48d18c6d0d823`  
		Last Modified: Sat, 28 Oct 2017 16:00:44 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfcb81948c9067d9d1feab9ff68eb0c935e39ae5842fc5e73494b46bc9b6ed`  
		Last Modified: Sat, 28 Oct 2017 16:00:44 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66d521351743dbead7da0f4cf9e2b29a3b2f0da2b530c9121ad6475b2f62762`  
		Last Modified: Sat, 28 Oct 2017 16:00:43 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:7c3b559c32a88ba831a44ab12cd831136495e412ecdbc7caf87485124e139aae
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261708193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45b4800f4f103eabe18f52fd476aef15014c0b534cac575ac88131e0cc36868`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:06:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Sat, 28 Oct 2017 11:06:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:06:43 GMT
ENV LIBERTY_VERSION=2017.10.0_0
# Sat, 28 Oct 2017 11:06:55 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 28 Oct 2017 11:06:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:06:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:06:56 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:06:57 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:06:57 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 28 Oct 2017 11:06:57 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:06:58 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443a17b95c97563bd468d4ce483f959ca5ce8953cf4af1c061e6bcb73d3812c`  
		Last Modified: Sat, 28 Oct 2017 11:08:07 GMT  
		Size: 427.7 KB (427739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5481caf0dd7fd69ebe8ed9bf052f78c0a397ff00eb54ea747191ce08f6054438`  
		Last Modified: Sat, 28 Oct 2017 11:08:13 GMT  
		Size: 88.0 MB (88046090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5903b47abf0b3b9243db816396e28ec2ef5679903eb5c3266109b041f677f375`  
		Last Modified: Sat, 28 Oct 2017 11:08:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283b923cdbf13450d707f058bfd142f292dcc794274d886bd783740e32c59a8d`  
		Last Modified: Sat, 28 Oct 2017 11:08:07 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c386072798d3f6ba96dfae526b0e44adde27504652a842f28e5d7c2cd7c599`  
		Last Modified: Sat, 28 Oct 2017 11:08:06 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:e7ed6b029969b4e8fdae3d87521a4271692e2c78012542d7d0f254c564f86734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5fdb0ebfb5680e854f1ba2ac2863f1bb440f6522b49bf6bd955e5697c6096e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288227306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b3050ada14bcf2479e4c7df066b5b9b4c8bc14b431e1bf3ad80d009210d704`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:46:26 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 04 Nov 2017 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 04 Nov 2017 10:47:37 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 04 Nov 2017 10:47:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:48:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556806d8dd85d45c0151f23cad993f6233bdda49cb2d1df92791e1d66778401`  
		Last Modified: Sat, 04 Nov 2017 10:50:20 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dfb50b69720eeaf49506618fb99d1b6ddaad6e7c488fd794bcf27d7d4c0896`  
		Last Modified: Sat, 04 Nov 2017 10:50:29 GMT  
		Size: 68.7 MB (68661748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538060810c1f5b4cd7bee59809fc1312515edec9d9f5a605dd5b657dbf97cd7`  
		Last Modified: Sat, 04 Nov 2017 10:50:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ead015f17efd777ad95eae79a9a57340bf8d562ab32b97487a4d70280b57a9`  
		Last Modified: Sat, 04 Nov 2017 10:50:44 GMT  
		Size: 32.2 MB (32236375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:6eb8f30579045947a5bdde5a55630ccd18415e7f365f202f373bf4cd214f68ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277118925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f093b29589f06ed3ffcf02f0928f3a5ce15a56a5315b171b42fb35ae181306`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:55:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 13:56:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 13:56:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 13:56:49 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:57:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3820b1dd9e0fc0082e319318986c22af780f5059a6c4f95789bda5f489b3aea`  
		Last Modified: Sat, 28 Oct 2017 13:59:04 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90854dcd4ca901ad8e9a32b0d2b92c3f504762e883f1c2b16802c20479a67978`  
		Last Modified: Sat, 28 Oct 2017 13:59:09 GMT  
		Size: 68.7 MB (68662291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45668d42dc89aa168edf1069195e1ad1a0bcfebb3b1a0862a8f25c04986517dd`  
		Last Modified: Sat, 28 Oct 2017 13:59:20 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ef5a661a5ae998d471032a46d332ceab186d0551209b0e3a787145df78e98`  
		Last Modified: Sat, 28 Oct 2017 13:59:23 GMT  
		Size: 32.2 MB (32236363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:eff08ba05ed99e08f26437d43a2cf3fd52815ef60edf0dde3463acbd725bf96d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (303985119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e87310e2100467f5b450849f3d11ffeda3ab9cbf05574cc2982a656928e427`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 15:48:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:52:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 15:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 15:54:57 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 15:54:59 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:56:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6715fd3aef5bcf5b29f3f34673bbe4c6052a548041e6d1a9f61ea3000cb8a843`  
		Last Modified: Sat, 28 Oct 2017 16:00:00 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe00d9660eed1c19531c288146c28150b9d0568bf417654887e9b296f26d047`  
		Last Modified: Sat, 28 Oct 2017 16:00:09 GMT  
		Size: 68.7 MB (68674416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab158a7d9c99cc95516f964396fac3bbcf6f486ff8dbe062af7145c19c9c20`  
		Last Modified: Sat, 28 Oct 2017 16:00:20 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3adecfa7b7f750667e055e5acd9ff56360895aa8a79030833ba55716316d`  
		Last Modified: Sat, 28 Oct 2017 16:00:25 GMT  
		Size: 32.2 MB (32242930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:630d778008200c00ce90b52495b0c6b9957fde6c79548f2e5701d368105f27f7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286217551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ac8e960cf65465744b792cbba311d358bba49946aefe0a3afb1d3d4c5c89ef`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 11:01:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:04:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 11:05:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 11:05:46 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 11:05:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:06:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e06d9317d5bf60dd5705cfc7a7cbd33ef0b23f81287bd58f73b27c10e2b95d`  
		Last Modified: Sat, 28 Oct 2017 11:07:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c035feea6a46cf9a3e1536fe0d6e7b9c9a5b55fa029f1e3f8b3feac48b738`  
		Last Modified: Sat, 28 Oct 2017 11:07:46 GMT  
		Size: 68.7 MB (68662009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e124cfb3e23c4e9dcb80fcb4f4a457e6b88f6f0d583632ca2a46a6fe991fc`  
		Last Modified: Sat, 28 Oct 2017 11:07:55 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d350dedd0c90bc00019009c4a3edd272eaf4271a1cc9eeda9f85ce374f403983`  
		Last Modified: Sat, 28 Oct 2017 11:07:56 GMT  
		Size: 32.2 MB (32236439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:6a9ba71262a423f2eabacb1b72962d1756737043f742ea19f661b2be17c37978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:0291196e9f1033af271a39822e13946c5429fbc697146fb690dffeef251efce5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187327706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c0a1e96012c4e3366096f84bf03d30ba688c9568f21ffa1764f0102e7d5f13`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:bd24ce0e2057ab7a4e527bcdcae5af8b73be820399f2a9ce9bade7bbf995446b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176218798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a40c954935333587e4028f8d86e91abe2551082fc726f69e515b159ef7961ba`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:c70f9bed6248b0facd0ed2c23487b0ff55cb68eb998aec7072edcc87c737d093
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 MB (203066301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c971d76bf94180d63be109c72f9e1c2474bf43e8ee9825f335f08af72c2989f`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:8af1e11642a39e68b50b43367a01e4071754d502344d486d0aa7bdb6151b9d42
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185317637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aacd3c7c50c6cb145160070930a18a2aaea2567fc4b73d957388bcf19e436f5`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:e7ed6b029969b4e8fdae3d87521a4271692e2c78012542d7d0f254c564f86734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5fdb0ebfb5680e854f1ba2ac2863f1bb440f6522b49bf6bd955e5697c6096e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288227306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b3050ada14bcf2479e4c7df066b5b9b4c8bc14b431e1bf3ad80d009210d704`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:46:26 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 04 Nov 2017 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 04 Nov 2017 10:47:37 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 04 Nov 2017 10:47:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:48:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556806d8dd85d45c0151f23cad993f6233bdda49cb2d1df92791e1d66778401`  
		Last Modified: Sat, 04 Nov 2017 10:50:20 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dfb50b69720eeaf49506618fb99d1b6ddaad6e7c488fd794bcf27d7d4c0896`  
		Last Modified: Sat, 04 Nov 2017 10:50:29 GMT  
		Size: 68.7 MB (68661748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6538060810c1f5b4cd7bee59809fc1312515edec9d9f5a605dd5b657dbf97cd7`  
		Last Modified: Sat, 04 Nov 2017 10:50:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ead015f17efd777ad95eae79a9a57340bf8d562ab32b97487a4d70280b57a9`  
		Last Modified: Sat, 04 Nov 2017 10:50:44 GMT  
		Size: 32.2 MB (32236375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:6eb8f30579045947a5bdde5a55630ccd18415e7f365f202f373bf4cd214f68ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277118925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f093b29589f06ed3ffcf02f0928f3a5ce15a56a5315b171b42fb35ae181306`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:55:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 13:56:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 13:56:49 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 13:56:49 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:57:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3820b1dd9e0fc0082e319318986c22af780f5059a6c4f95789bda5f489b3aea`  
		Last Modified: Sat, 28 Oct 2017 13:59:04 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90854dcd4ca901ad8e9a32b0d2b92c3f504762e883f1c2b16802c20479a67978`  
		Last Modified: Sat, 28 Oct 2017 13:59:09 GMT  
		Size: 68.7 MB (68662291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45668d42dc89aa168edf1069195e1ad1a0bcfebb3b1a0862a8f25c04986517dd`  
		Last Modified: Sat, 28 Oct 2017 13:59:20 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ef5a661a5ae998d471032a46d332ceab186d0551209b0e3a787145df78e98`  
		Last Modified: Sat, 28 Oct 2017 13:59:23 GMT  
		Size: 32.2 MB (32236363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:eff08ba05ed99e08f26437d43a2cf3fd52815ef60edf0dde3463acbd725bf96d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (303985119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e87310e2100467f5b450849f3d11ffeda3ab9cbf05574cc2982a656928e427`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 15:48:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:52:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 15:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 15:54:57 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 15:54:59 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:56:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6715fd3aef5bcf5b29f3f34673bbe4c6052a548041e6d1a9f61ea3000cb8a843`  
		Last Modified: Sat, 28 Oct 2017 16:00:00 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe00d9660eed1c19531c288146c28150b9d0568bf417654887e9b296f26d047`  
		Last Modified: Sat, 28 Oct 2017 16:00:09 GMT  
		Size: 68.7 MB (68674416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab158a7d9c99cc95516f964396fac3bbcf6f486ff8dbe062af7145c19c9c20`  
		Last Modified: Sat, 28 Oct 2017 16:00:20 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3adecfa7b7f750667e055e5acd9ff56360895aa8a79030833ba55716316d`  
		Last Modified: Sat, 28 Oct 2017 16:00:25 GMT  
		Size: 32.2 MB (32242930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:630d778008200c00ce90b52495b0c6b9957fde6c79548f2e5701d368105f27f7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286217551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ac8e960cf65465744b792cbba311d358bba49946aefe0a3afb1d3d4c5c89ef`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 11:01:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:04:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 11:05:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 28 Oct 2017 11:05:46 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 28 Oct 2017 11:05:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:06:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e06d9317d5bf60dd5705cfc7a7cbd33ef0b23f81287bd58f73b27c10e2b95d`  
		Last Modified: Sat, 28 Oct 2017 11:07:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c035feea6a46cf9a3e1536fe0d6e7b9c9a5b55fa029f1e3f8b3feac48b738`  
		Last Modified: Sat, 28 Oct 2017 11:07:46 GMT  
		Size: 68.7 MB (68662009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e124cfb3e23c4e9dcb80fcb4f4a457e6b88f6f0d583632ca2a46a6fe991fc`  
		Last Modified: Sat, 28 Oct 2017 11:07:55 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d350dedd0c90bc00019009c4a3edd272eaf4271a1cc9eeda9f85ce374f403983`  
		Last Modified: Sat, 28 Oct 2017 11:07:56 GMT  
		Size: 32.2 MB (32236439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:89a8ad0921449b7d43d3ccae83f7ca179bbadb41ee53e87246cafb5747874cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:58592d3f497bf8de1b7d30e63cb0aeaf1b2aa539c02dae6b0343165aab6971f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222057171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70906b728b21fbd9876cdf833ed6c078d6c4c2b556ec9b05d7e65c0d48dc280d`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:44:05 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Sat, 04 Nov 2017 10:45:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd7d0ee2a93aee2af088fee85cc84b6ca16e67be03c4b158ac37afb331d532`  
		Last Modified: Sat, 04 Nov 2017 10:49:45 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd8f1c2cfd2941288ca4f77e33906ab53bb2c2059da26c31a73e76fc4f5fea4`  
		Last Modified: Sat, 04 Nov 2017 10:49:50 GMT  
		Size: 34.7 MB (34728914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:beee56e7f19cfb46d3f1120063130505977e0b9ae30a85ab1c5b3212fc1fcbac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.9 MB (210948465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3e60bef5169d677d69d2ade4a92f3d45b4a56bf4b277ef6f4a200da3e7641e`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:53:35 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Sat, 28 Oct 2017 13:54:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842935291ec0110cc5dba3c910b342f3c16d51d0df85be770263bbbb8c8dd4d5`  
		Last Modified: Sat, 28 Oct 2017 13:58:33 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31692e519a5d85c361e6903a92e7d47440fede5be64d97e580e9942871b6ae6`  
		Last Modified: Sat, 28 Oct 2017 13:58:35 GMT  
		Size: 34.7 MB (34729114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:fd0d8db46175dc38a391c20162b1863b57a1b4b5a5a1f589f2201759fa8ec658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237802255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadde02ea55e85310135c7e8045dc31a20397997552ab7bdfe9e4c9fd975364d`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 15:48:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:48:49 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Sat, 28 Oct 2017 15:50:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d104c1362d5c92c9c1100c84e44032137f74cfe843c99c26eae446b072e57594`  
		Last Modified: Sat, 28 Oct 2017 15:59:26 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec03775bb3451ef13e33b5fcdcf95d5a1ee993feaa7051fc78b0140a2bb4ee`  
		Last Modified: Sat, 28 Oct 2017 15:59:31 GMT  
		Size: 34.7 MB (34735404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:681d538596529eb514fed3f7f9528c959442c8d15b42aa62e4b1d1836aeaea64
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220047279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4759d08b591e9ddb2206426b358e28b4704b1bf9d532814a8ed81acaf16e1f4`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 11:01:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:01:53 GMT
COPY file:92b76393e4c6d7a153e5ed26486e713887719a8923514dc5006d429e59926b60 in /config/ 
# Sat, 28 Oct 2017 11:02:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.2 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c4741d0e4977640f805b82845b2fba6278ea5621afe2248c13539a8c810d75`  
		Last Modified: Sat, 28 Oct 2017 11:07:14 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6101df1aaa9df629dc7db61f04a48728aa6d7d1f5df5d492828d6888380745e`  
		Last Modified: Sat, 28 Oct 2017 11:07:18 GMT  
		Size: 34.7 MB (34729093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:46d3be3a1974470c38499170740542d8e192cb0ef204c3d61a5a7e786956952a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile6` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:e8ef852823c6616aa3d41c30442d17a0427c90e803923b43dfc38b2500682f75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247662027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f498a3aa0698a0552a89e2c2e31248bd64c6e1f39baed809b1465b6882f34ea1`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:45:16 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Sat, 04 Nov 2017 10:46:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c38d9a743f91532b90383c6882986d008224ae6c42a9fe66d491d73e0b4a1bf`  
		Last Modified: Sat, 04 Nov 2017 10:50:02 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b860a809ce95a4dd9ac7e71085744f517ffcbfbc6e3938678dfbb3baf4775a7`  
		Last Modified: Sat, 04 Nov 2017 10:50:10 GMT  
		Size: 60.3 MB (60333765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; 386

```console
$ docker pull websphere-liberty@sha256:7a5bad007aea02bd362b3611edb8b727311a696fcee55148d0a7960972a6cbb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236553160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0b019128169eb8e5341a8873c40662eb26254f44a5b5f8b974094303ac11e1`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:54:36 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Sat, 28 Oct 2017 13:55:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee9765cf4b3cbb9f6969baf4b4b5dca3508fe3d6e76868c37052da7b48cfd51`  
		Last Modified: Sat, 28 Oct 2017 13:58:46 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23179c914f7a1319d7bd48ec63157771f308e8ff9665775dac6b560df4c8c769`  
		Last Modified: Sat, 28 Oct 2017 13:58:51 GMT  
		Size: 60.3 MB (60333803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e35c2439e8a515e0413d011c295a689ff36e548c43a4dd2aa84d46eba19c4f8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ca8991ad8c3c684807ae22782871d31cec9d12de2d1dcecb2df070778df183`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 15:48:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:50:29 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Sat, 28 Oct 2017 15:52:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010c18dc21cb6a89f1639a629f61d43d40b55cb88d9b3ae35f0473c575be0374`  
		Last Modified: Sat, 28 Oct 2017 15:59:42 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e2727be7c44c1ad087a945756c574498e7b6f339ff61d2cd444a92ce0950f7`  
		Last Modified: Sat, 28 Oct 2017 15:59:50 GMT  
		Size: 60.3 MB (60339962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:999c9f37fc8e453e35f706925b9414114b1b1054c0d85d344dc5900107e5bb9b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245652080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501019cc50cf9d79929499ac6ff50bee4d4ea9109838929c46187dcf98333098`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 11:01:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:03:02 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Sat, 28 Oct 2017 11:04:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc90e5977609fd09bb7eba256ce45eef3aebe7d37e31a0ae08ff57a32ea917c4`  
		Last Modified: Sat, 28 Oct 2017 11:07:26 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1178c3c983ae74813abd08f1176ec86e3fbc2941c21dbf38889c17acd00522`  
		Last Modified: Sat, 28 Oct 2017 11:07:32 GMT  
		Size: 60.3 MB (60333891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:6a1a0c9f6891afe5d6b9a76cddf1aa0fc10fbe6e4bbbd7a4638aba9d8dffd680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c7d47baf557484757f2918552ee32354d20170658dab9f1fe24b18cccb6bc449
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255990004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ed568bb3a0931f9a7d6e3bd85be5b0de37f96ef110c6b5cc9b7cfba980086`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:46:26 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 04 Nov 2017 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556806d8dd85d45c0151f23cad993f6233bdda49cb2d1df92791e1d66778401`  
		Last Modified: Sat, 04 Nov 2017 10:50:20 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dfb50b69720eeaf49506618fb99d1b6ddaad6e7c488fd794bcf27d7d4c0896`  
		Last Modified: Sat, 04 Nov 2017 10:50:29 GMT  
		Size: 68.7 MB (68661748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:4b4c3c2993f03b1317ebdcdc1cb6db2d9fa1cff6a666f70d3201a826cc00f0e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244881642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6ae3bac9d2096089f16798418bac974745a34d1a579b01902c9bbc3a11e1b0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:55:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 13:56:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
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
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3820b1dd9e0fc0082e319318986c22af780f5059a6c4f95789bda5f489b3aea`  
		Last Modified: Sat, 28 Oct 2017 13:59:04 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90854dcd4ca901ad8e9a32b0d2b92c3f504762e883f1c2b16802c20479a67978`  
		Last Modified: Sat, 28 Oct 2017 13:59:09 GMT  
		Size: 68.7 MB (68662291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:06f1a735eaa3cfd694b31d112916e251c738f7a1c4b8069b16c2d86696263ec4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271741266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d9a82b11473551fe4c9a60524215fb4113dc433e8f2f659cf88701b7005cde`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 02:59:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 03:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:01:23 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 15:25:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 15:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:47:05 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 15:47:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 15:47:43 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 15:47:44 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 15:47:50 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 15:48:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 15:48:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 15:48:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 15:48:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 15:48:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 15:48:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 15:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 15:48:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 15:48:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 15:48:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 15:52:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 15:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b476a6883c518af1b4824ab408f118040fb526cadfb99fd6abe878eaaa1911`  
		Last Modified: Wed, 11 Oct 2017 03:13:13 GMT  
		Size: 2.9 MB (2877882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625fcc76f0b17e88e5940e686bb2cd351bc5dfa8cbfc2b29ab175a54b407116c`  
		Last Modified: Sat, 28 Oct 2017 15:30:11 GMT  
		Size: 138.4 MB (138444125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f12109ab6d329bdc2ef6e984333e7d7467194b9c1555a6f7f4e0cc94421909`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 453.5 KB (453475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43dede1bdbb2a9eba400c77e0094759189c8fa34cd97cf3d0e08ac0bfb801d`  
		Last Modified: Sat, 28 Oct 2017 15:59:17 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003343d0a29d0699c5c440f31966e10685dccefdc4aca06b19965f3cb6cf4c85`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4395663ba00a027b437ace3cd4d870e842b2a48f6c1a231b423178aed3bf0e97`  
		Last Modified: Sat, 28 Oct 2017 15:59:15 GMT  
		Size: 644.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e60ac10758d284fde720c0fd58fe048920127c6088d32433e354f074490ab`  
		Last Modified: Sat, 28 Oct 2017 15:59:14 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6715fd3aef5bcf5b29f3f34673bbe4c6052a548041e6d1a9f61ea3000cb8a843`  
		Last Modified: Sat, 28 Oct 2017 16:00:00 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe00d9660eed1c19531c288146c28150b9d0568bf417654887e9b296f26d047`  
		Last Modified: Sat, 28 Oct 2017 16:00:09 GMT  
		Size: 68.7 MB (68674416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:ef218b83c99d1a95f6fcd44e998fcc5498652426319bce2639b247fd563d0dcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (253980197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc83c334a6645d2861503ff7c1314606f9699c899873ffb5127856f12c389344`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:32:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 13:32:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:32:40 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 10:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 10:43:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:33 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 11:01:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 11:01:39 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 11:01:39 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 11:01:40 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 11:01:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 11:01:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 11:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 11:01:43 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 11:01:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 11:01:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 11:01:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 11:01:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 11:01:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 11:01:52 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 11:04:12 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 11:05:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840f1634ead3c9f586124946dcdb0ffbf073437565cd6b49a1d4dc92c9a7023`  
		Last Modified: Wed, 11 Oct 2017 13:37:00 GMT  
		Size: 2.8 MB (2765008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92b849142cf2264a081fc77e7eefb278ef4221f073d41720643d3dedac6ab2`  
		Last Modified: Sat, 28 Oct 2017 10:45:02 GMT  
		Size: 124.1 MB (124136180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebed557f9c819e74802324c691cd0e15ad6e6c8a0ab059fa99e74c61e8c7a86a`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 427.7 KB (427740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f48dad93b08213b190f2ac9861167fd6f3ad8e0447bc70753f4d1145b2918c`  
		Last Modified: Sat, 28 Oct 2017 11:07:08 GMT  
		Size: 11.7 MB (11656685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c217410de96c7135baa87220b989e95b0d2531decd0d52bea6877e2e33d1e0`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac82e6560972ff1935b0c14cd73d196f6b447feae6308b650c78c2a552201dd`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eb0c77956f7a54ccbb0e49714fe4dd915fa02b90835013e7a6572901786b3b`  
		Last Modified: Sat, 28 Oct 2017 11:07:07 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e06d9317d5bf60dd5705cfc7a7cbd33ef0b23f81287bd58f73b27c10e2b95d`  
		Last Modified: Sat, 28 Oct 2017 11:07:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c035feea6a46cf9a3e1536fe0d6e7b9c9a5b55fa029f1e3f8b3feac48b738`  
		Last Modified: Sat, 28 Oct 2017 11:07:46 GMT  
		Size: 68.7 MB (68662009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
