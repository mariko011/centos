<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.4`](#couchbase464)
-	[`couchbase:5.0.0`](#couchbase500)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.0`](#couchbasecommunity-500)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.4`](#couchbaseenterprise-464)
-	[`couchbase:enterprise-5.0.0`](#couchbaseenterprise-500)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.4`

```console
$ docker pull couchbase@sha256:683d41e4d253b0fa45c400dcd769d4f182bf437428b4a907dba9fab77b5c85ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:578b357f669e105ac8a2e2759c306986f86a56cb7408d1fc0bd9435f7aa8c179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218812892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ccb75dec035886b916e7fa0b7dec59283978cb4f51f20e9392aeb3e9c8a9c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_VERSION=4.6.4
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Tue, 28 Nov 2017 01:40:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 28 Nov 2017 01:40:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 28 Nov 2017 01:40:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 28 Nov 2017 01:40:45 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 28 Nov 2017 01:40:45 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 28 Nov 2017 01:40:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 28 Nov 2017 01:40:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 28 Nov 2017 01:40:51 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 28 Nov 2017 01:40:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 01:40:52 GMT
CMD ["couchbase-server"]
# Tue, 28 Nov 2017 01:40:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 28 Nov 2017 01:40:52 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c97fbf90fe29ce5301842ffd1774936131c41a1dd22ac3fd0e9f2ef6e298da8`  
		Last Modified: Tue, 28 Nov 2017 01:41:24 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355879eb393fdbb93face493cbbebf7a9f8ebbe2d44b1291e5d55812c3da76e8`  
		Last Modified: Tue, 28 Nov 2017 01:41:44 GMT  
		Size: 134.4 MB (134412114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b7cae3023808f477c72cc144daab1af30bf026ddf3f1e2947ba6a07e775cca`  
		Last Modified: Tue, 28 Nov 2017 01:41:25 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f23ac478b0c6cc53c4dc52544ac8f5e5bb3f7bb630f05471d63a7ce560f89f`  
		Last Modified: Tue, 28 Nov 2017 01:41:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a0f7c2b031a56ab2f79b5d3f8efb47d212bcd022232790ff10a6e68277fc2e`  
		Last Modified: Tue, 28 Nov 2017 01:41:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e356fda6258ecca874caa23b8a4f81ec9d649f066453185842c78958ba8a5ea`  
		Last Modified: Tue, 28 Nov 2017 01:41:22 GMT  
		Size: 105.4 KB (105405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f801be44d227d807e330d40e570cc2195d1983299cac56562532fc6a01acb566`  
		Last Modified: Tue, 28 Nov 2017 01:41:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.0.0`

```console
$ docker pull couchbase@sha256:f7a796aaf44ad49b5047c322d823d4032fd076972c00caba2ee3f5c812682847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:418c3ec7e4d307985a3f65e1efa8d2409875010eda2e7a7de610d5b283ceca35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226761560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a3a275e6630e2099c84a75a78b9f1e1a904ea9013a67b6a95d89ab02b49cde`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 18 Nov 2017 00:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:42:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:42:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:42:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:42:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:42:38 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:42:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:42:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a154b14902ce660827bb2ab12ebdcaf7bcd0ed257b4e4a038d518bb4ff8f7`  
		Last Modified: Sat, 18 Nov 2017 00:44:26 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7bb7fa564b84b132eabfd14cb6508d84ef4e33f25a70700e70e3ea8cc21da6`  
		Last Modified: Sat, 18 Nov 2017 00:44:46 GMT  
		Size: 142.4 MB (142360789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a4f9b7b3bc5e114a2f33990e7e8799566768074e8a8ed3aef7c05e212cfeab`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b642499a247af217c353f6e9d490410e451887546884fe3a55af9042a6275e1e`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b415fe61c50f6ecdeebe2bb45f9bad29a1644be2978e634f732152e512cd49e3`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378859087f78aad57d47e66e61af8fcbefd20b65dd48e2a72d2055db4905cd00`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba00a1cf4fe89182d61622cc768f44bf6a3408f2b86706d8c38a4375a50914c`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:3a63e1dce645a3609aa9aef8664f7d03501a1766fc11bb98d9547ee490a78bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:32f515cd5d51d10dfd3a283e13516cbb4db9d61024779456ae01952e4b3566b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216731955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f29456be6b04ae8d2d9d886f154e21dee443fc58275da2a6492824c16a97e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 18 Nov 2017 00:43:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:43:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:43:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:43:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:43:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:43:36 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:43:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:43:36 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:43:36 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:43:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71f4bfe2af8afe844e8a9ade4c43b9e4daa410bbfa8de0ed7cbd6a5e1a0d459`  
		Last Modified: Sat, 18 Nov 2017 00:46:10 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a401b4d51bc494182573222dbe1fe7cc9954d33e7f518bbaf3e67c0014e8a0`  
		Last Modified: Sat, 18 Nov 2017 00:46:31 GMT  
		Size: 132.3 MB (132331177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e958dfb934092ccaa112520e1bcaa05de7cdb137e691fcbf164d483336c9e7f2`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886d5b94c617b471f1c18fb68021ba0cea9f3776f26f3c2f90a6999fc82b87f`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2cc9b7b358b2835cecd6036545d39030a7da75472c196d1f3c1868a20b5dc3`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddd994672f0aa5f82f6afb776f4251eeb8621ca403f616c5e8f2fd97965d4fa`  
		Last Modified: Sat, 18 Nov 2017 00:46:09 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0347471f55ad36881df6a4a772cfee9e7f4db115e899a41c1b0e7556dda61cbc`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:72e2cbceac70c1947f511aafea47803c5298d841b08cc1a821fa860bc074a99e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:8852d7d0d2bf5c9ed6ab16332c617aa302ff16450756f213628f637002652c34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215477591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3920862b2f7f1370508c45176d1c182ea174297493bce79afac5bf27530ba73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:43:42 GMT
ARG CB_VERSION=4.5.1
# Sat, 18 Nov 2017 00:43:42 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:43:42 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:43:43 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Sat, 18 Nov 2017 00:43:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:43:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:44:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:44:07 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:44:07 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:44:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:44:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:44:09 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:44:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:44:09 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:44:10 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:44:10 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e94f6ffdba722d17c1b9c35ac02fa472cffa81ba90426797f01c16bdeba21`  
		Last Modified: Sat, 18 Nov 2017 00:46:52 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110adb9bbe0947d802f21b560eb805ee58b9efbd079a3a6ac4fa5c526cf5d298`  
		Last Modified: Sat, 18 Nov 2017 00:47:11 GMT  
		Size: 131.1 MB (131076812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b49469f509498044cb319cdae2f5a0e5efb3c569250b13b14e7ad322a5b7c36`  
		Last Modified: Sat, 18 Nov 2017 00:46:50 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba08560f83bda6ef94b46e27d91bc090ff06fc15777a712fdbe6c1831985dc`  
		Last Modified: Sat, 18 Nov 2017 00:46:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f186bcf17437ed781d3552977c5186899550234357c357f6090be193175cd6`  
		Last Modified: Sat, 18 Nov 2017 00:46:50 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a1dc258f254c1db7558f21984ea36e8a763f78714fa996eef7c666a77b8f17`  
		Last Modified: Sat, 18 Nov 2017 00:46:50 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad824651454aa10fa5519af17bd35664b6f97b0c4802d6fcb5403b513753d7f`  
		Last Modified: Sat, 18 Nov 2017 00:46:50 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:3a63e1dce645a3609aa9aef8664f7d03501a1766fc11bb98d9547ee490a78bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:32f515cd5d51d10dfd3a283e13516cbb4db9d61024779456ae01952e4b3566b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216731955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f29456be6b04ae8d2d9d886f154e21dee443fc58275da2a6492824c16a97e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:43:16 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 18 Nov 2017 00:43:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:43:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:43:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:43:34 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:43:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:43:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:43:36 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:43:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:43:36 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:43:36 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:43:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71f4bfe2af8afe844e8a9ade4c43b9e4daa410bbfa8de0ed7cbd6a5e1a0d459`  
		Last Modified: Sat, 18 Nov 2017 00:46:10 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a401b4d51bc494182573222dbe1fe7cc9954d33e7f518bbaf3e67c0014e8a0`  
		Last Modified: Sat, 18 Nov 2017 00:46:31 GMT  
		Size: 132.3 MB (132331177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e958dfb934092ccaa112520e1bcaa05de7cdb137e691fcbf164d483336c9e7f2`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886d5b94c617b471f1c18fb68021ba0cea9f3776f26f3c2f90a6999fc82b87f`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2cc9b7b358b2835cecd6036545d39030a7da75472c196d1f3c1868a20b5dc3`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddd994672f0aa5f82f6afb776f4251eeb8621ca403f616c5e8f2fd97965d4fa`  
		Last Modified: Sat, 18 Nov 2017 00:46:09 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0347471f55ad36881df6a4a772cfee9e7f4db115e899a41c1b0e7556dda61cbc`  
		Last Modified: Sat, 18 Nov 2017 00:46:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f7a796aaf44ad49b5047c322d823d4032fd076972c00caba2ee3f5c812682847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:418c3ec7e4d307985a3f65e1efa8d2409875010eda2e7a7de610d5b283ceca35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226761560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a3a275e6630e2099c84a75a78b9f1e1a904ea9013a67b6a95d89ab02b49cde`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 18 Nov 2017 00:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:42:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:42:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:42:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:42:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:42:38 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:42:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:42:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a154b14902ce660827bb2ab12ebdcaf7bcd0ed257b4e4a038d518bb4ff8f7`  
		Last Modified: Sat, 18 Nov 2017 00:44:26 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7bb7fa564b84b132eabfd14cb6508d84ef4e33f25a70700e70e3ea8cc21da6`  
		Last Modified: Sat, 18 Nov 2017 00:44:46 GMT  
		Size: 142.4 MB (142360789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a4f9b7b3bc5e114a2f33990e7e8799566768074e8a8ed3aef7c05e212cfeab`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b642499a247af217c353f6e9d490410e451887546884fe3a55af9042a6275e1e`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b415fe61c50f6ecdeebe2bb45f9bad29a1644be2978e634f732152e512cd49e3`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378859087f78aad57d47e66e61af8fcbefd20b65dd48e2a72d2055db4905cd00`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba00a1cf4fe89182d61622cc768f44bf6a3408f2b86706d8c38a4375a50914c`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.4`

```console
$ docker pull couchbase@sha256:683d41e4d253b0fa45c400dcd769d4f182bf437428b4a907dba9fab77b5c85ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:578b357f669e105ac8a2e2759c306986f86a56cb7408d1fc0bd9435f7aa8c179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218812892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ccb75dec035886b916e7fa0b7dec59283978cb4f51f20e9392aeb3e9c8a9c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_VERSION=4.6.4
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Tue, 28 Nov 2017 01:40:18 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Tue, 28 Nov 2017 01:40:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 28 Nov 2017 01:40:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 28 Nov 2017 01:40:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 28 Nov 2017 01:40:45 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 28 Nov 2017 01:40:45 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 28 Nov 2017 01:40:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 28 Nov 2017 01:40:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 28 Nov 2017 01:40:51 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 28 Nov 2017 01:40:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 01:40:52 GMT
CMD ["couchbase-server"]
# Tue, 28 Nov 2017 01:40:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 28 Nov 2017 01:40:52 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c97fbf90fe29ce5301842ffd1774936131c41a1dd22ac3fd0e9f2ef6e298da8`  
		Last Modified: Tue, 28 Nov 2017 01:41:24 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355879eb393fdbb93face493cbbebf7a9f8ebbe2d44b1291e5d55812c3da76e8`  
		Last Modified: Tue, 28 Nov 2017 01:41:44 GMT  
		Size: 134.4 MB (134412114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b7cae3023808f477c72cc144daab1af30bf026ddf3f1e2947ba6a07e775cca`  
		Last Modified: Tue, 28 Nov 2017 01:41:25 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f23ac478b0c6cc53c4dc52544ac8f5e5bb3f7bb630f05471d63a7ce560f89f`  
		Last Modified: Tue, 28 Nov 2017 01:41:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a0f7c2b031a56ab2f79b5d3f8efb47d212bcd022232790ff10a6e68277fc2e`  
		Last Modified: Tue, 28 Nov 2017 01:41:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e356fda6258ecca874caa23b8a4f81ec9d649f066453185842c78958ba8a5ea`  
		Last Modified: Tue, 28 Nov 2017 01:41:22 GMT  
		Size: 105.4 KB (105405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f801be44d227d807e330d40e570cc2195d1983299cac56562532fc6a01acb566`  
		Last Modified: Tue, 28 Nov 2017 01:41:21 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.0.0`

```console
$ docker pull couchbase@sha256:f7a796aaf44ad49b5047c322d823d4032fd076972c00caba2ee3f5c812682847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:418c3ec7e4d307985a3f65e1efa8d2409875010eda2e7a7de610d5b283ceca35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226761560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a3a275e6630e2099c84a75a78b9f1e1a904ea9013a67b6a95d89ab02b49cde`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 18 Nov 2017 00:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:42:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:42:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:42:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:42:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:42:38 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:42:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:42:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a154b14902ce660827bb2ab12ebdcaf7bcd0ed257b4e4a038d518bb4ff8f7`  
		Last Modified: Sat, 18 Nov 2017 00:44:26 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7bb7fa564b84b132eabfd14cb6508d84ef4e33f25a70700e70e3ea8cc21da6`  
		Last Modified: Sat, 18 Nov 2017 00:44:46 GMT  
		Size: 142.4 MB (142360789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a4f9b7b3bc5e114a2f33990e7e8799566768074e8a8ed3aef7c05e212cfeab`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b642499a247af217c353f6e9d490410e451887546884fe3a55af9042a6275e1e`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b415fe61c50f6ecdeebe2bb45f9bad29a1644be2978e634f732152e512cd49e3`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378859087f78aad57d47e66e61af8fcbefd20b65dd48e2a72d2055db4905cd00`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba00a1cf4fe89182d61622cc768f44bf6a3408f2b86706d8c38a4375a50914c`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:f7a796aaf44ad49b5047c322d823d4032fd076972c00caba2ee3f5c812682847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:418c3ec7e4d307985a3f65e1efa8d2409875010eda2e7a7de610d5b283ceca35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226761560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a3a275e6630e2099c84a75a78b9f1e1a904ea9013a67b6a95d89ab02b49cde`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Sat, 18 Nov 2017 00:41:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 18 Nov 2017 00:42:13 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_VERSION=5.0.0
# Sat, 18 Nov 2017 00:42:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 18 Nov 2017 00:42:14 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 18 Nov 2017 00:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 18 Nov 2017 00:42:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 18 Nov 2017 00:42:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 18 Nov 2017 00:42:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 18 Nov 2017 00:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 18 Nov 2017 00:42:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 18 Nov 2017 00:42:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 18 Nov 2017 00:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 18 Nov 2017 00:42:38 GMT
CMD ["couchbase-server"]
# Sat, 18 Nov 2017 00:42:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 18 Nov 2017 00:42:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32224e682759e32fc45f2a79617550f563d63ca3bfb4c6ecbb2447ad9cb5fe6c`  
		Last Modified: Sat, 18 Nov 2017 00:44:28 GMT  
		Size: 11.4 MB (11393015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a154b14902ce660827bb2ab12ebdcaf7bcd0ed257b4e4a038d518bb4ff8f7`  
		Last Modified: Sat, 18 Nov 2017 00:44:26 GMT  
		Size: 1.9 KB (1907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7bb7fa564b84b132eabfd14cb6508d84ef4e33f25a70700e70e3ea8cc21da6`  
		Last Modified: Sat, 18 Nov 2017 00:44:46 GMT  
		Size: 142.4 MB (142360789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a4f9b7b3bc5e114a2f33990e7e8799566768074e8a8ed3aef7c05e212cfeab`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b642499a247af217c353f6e9d490410e451887546884fe3a55af9042a6275e1e`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b415fe61c50f6ecdeebe2bb45f9bad29a1644be2978e634f732152e512cd49e3`  
		Last Modified: Sat, 18 Nov 2017 00:44:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378859087f78aad57d47e66e61af8fcbefd20b65dd48e2a72d2055db4905cd00`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba00a1cf4fe89182d61622cc768f44bf6a3408f2b86706d8c38a4375a50914c`  
		Last Modified: Sat, 18 Nov 2017 00:44:24 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
