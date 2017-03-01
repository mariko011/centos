<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.6.0`](#couchbase460)
-	[`couchbase:enterprise-4.6.0`](#couchbaseenterprise-460)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.0`](#couchbasecommunity-450)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:f564358fcbd9d713a261681c2abed3b8918409bec3091c8dbfa8000dbbd78ceb
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211662349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57fd20cb453b087d398b26ce344f85038e44f2e2a61b932c394a43f83d76241`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_VERSION=4.6.0
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:50:32 GMT
ARG CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028
# Mon, 27 Feb 2017 22:50:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:50:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:50:58 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:50:59 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:01 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:02 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28528920e2cece1ac3d0178d83c538644213c650fbbb542cb07f4bc99d8d0457`  
		Last Modified: Wed, 01 Mar 2017 23:00:21 GMT  
		Size: 1.9 KB (1859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372807edb839d236ec8937535f0ba7e6dc61d85887e3a05d058869a60705dda`  
		Last Modified: Wed, 01 Mar 2017 23:01:01 GMT  
		Size: 134.5 MB (134532175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5109e41e3d4e94be3f5552da31c590a7b8338cbc2af2849b685877efb43fdb2e`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7101f009a7243138be2705e56d23af2282ced0a6e10b31a1c5911b7faa5830`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0301fb4521d7013c6bb5f486cfebcd11697bcc5a64793adb5b27978f141c4487`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fc6bd8ffa33ffcc8844b1600ea3a9c90649d4cdbf61759daa8c0a518fb7d6`  
		Last Modified: Wed, 01 Mar 2017 23:00:20 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bf4b113f583f6d2f39455b0e0d0ca7b44d9ec28b6fb03651a552c99d5c622`  
		Last Modified: Wed, 01 Mar 2017 23:00:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f564358fcbd9d713a261681c2abed3b8918409bec3091c8dbfa8000dbbd78ceb
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211662349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57fd20cb453b087d398b26ce344f85038e44f2e2a61b932c394a43f83d76241`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_VERSION=4.6.0
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:50:32 GMT
ARG CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028
# Mon, 27 Feb 2017 22:50:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:50:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:50:58 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:50:59 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:01 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:02 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28528920e2cece1ac3d0178d83c538644213c650fbbb542cb07f4bc99d8d0457`  
		Last Modified: Wed, 01 Mar 2017 23:00:21 GMT  
		Size: 1.9 KB (1859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372807edb839d236ec8937535f0ba7e6dc61d85887e3a05d058869a60705dda`  
		Last Modified: Wed, 01 Mar 2017 23:01:01 GMT  
		Size: 134.5 MB (134532175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5109e41e3d4e94be3f5552da31c590a7b8338cbc2af2849b685877efb43fdb2e`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7101f009a7243138be2705e56d23af2282ced0a6e10b31a1c5911b7faa5830`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0301fb4521d7013c6bb5f486cfebcd11697bcc5a64793adb5b27978f141c4487`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fc6bd8ffa33ffcc8844b1600ea3a9c90649d4cdbf61759daa8c0a518fb7d6`  
		Last Modified: Wed, 01 Mar 2017 23:00:20 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bf4b113f583f6d2f39455b0e0d0ca7b44d9ec28b6fb03651a552c99d5c622`  
		Last Modified: Wed, 01 Mar 2017 23:00:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.6.0`

```console
$ docker pull couchbase@sha256:f564358fcbd9d713a261681c2abed3b8918409bec3091c8dbfa8000dbbd78ceb
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.6.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211662349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57fd20cb453b087d398b26ce344f85038e44f2e2a61b932c394a43f83d76241`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_VERSION=4.6.0
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:50:32 GMT
ARG CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028
# Mon, 27 Feb 2017 22:50:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:50:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:50:58 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:50:59 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:01 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:02 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28528920e2cece1ac3d0178d83c538644213c650fbbb542cb07f4bc99d8d0457`  
		Last Modified: Wed, 01 Mar 2017 23:00:21 GMT  
		Size: 1.9 KB (1859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372807edb839d236ec8937535f0ba7e6dc61d85887e3a05d058869a60705dda`  
		Last Modified: Wed, 01 Mar 2017 23:01:01 GMT  
		Size: 134.5 MB (134532175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5109e41e3d4e94be3f5552da31c590a7b8338cbc2af2849b685877efb43fdb2e`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7101f009a7243138be2705e56d23af2282ced0a6e10b31a1c5911b7faa5830`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0301fb4521d7013c6bb5f486cfebcd11697bcc5a64793adb5b27978f141c4487`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fc6bd8ffa33ffcc8844b1600ea3a9c90649d4cdbf61759daa8c0a518fb7d6`  
		Last Modified: Wed, 01 Mar 2017 23:00:20 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bf4b113f583f6d2f39455b0e0d0ca7b44d9ec28b6fb03651a552c99d5c622`  
		Last Modified: Wed, 01 Mar 2017 23:00:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.0`

```console
$ docker pull couchbase@sha256:f564358fcbd9d713a261681c2abed3b8918409bec3091c8dbfa8000dbbd78ceb
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211662349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57fd20cb453b087d398b26ce344f85038e44f2e2a61b932c394a43f83d76241`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_VERSION=4.6.0
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:50:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:50:32 GMT
ARG CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028
# Mon, 27 Feb 2017 22:50:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:50:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:50:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:50:58 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:50:59 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:01 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:02 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28528920e2cece1ac3d0178d83c538644213c650fbbb542cb07f4bc99d8d0457`  
		Last Modified: Wed, 01 Mar 2017 23:00:21 GMT  
		Size: 1.9 KB (1859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372807edb839d236ec8937535f0ba7e6dc61d85887e3a05d058869a60705dda`  
		Last Modified: Wed, 01 Mar 2017 23:01:01 GMT  
		Size: 134.5 MB (134532175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5109e41e3d4e94be3f5552da31c590a7b8338cbc2af2849b685877efb43fdb2e`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7101f009a7243138be2705e56d23af2282ced0a6e10b31a1c5911b7faa5830`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0301fb4521d7013c6bb5f486cfebcd11697bcc5a64793adb5b27978f141c4487`  
		Last Modified: Wed, 01 Mar 2017 23:00:18 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fc6bd8ffa33ffcc8844b1600ea3a9c90649d4cdbf61759daa8c0a518fb7d6`  
		Last Modified: Wed, 01 Mar 2017 23:00:20 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7bf4b113f583f6d2f39455b0e0d0ca7b44d9ec28b6fb03651a552c99d5c622`  
		Last Modified: Wed, 01 Mar 2017 23:00:19 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:d56cdc76187300e59db46147521b2b6f7261a154b8772c0db5a017068d5f082c
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205594604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ebbceca09e82485e5c41afd107514a5105049693a5c11f7265a80f14838a82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_VERSION=4.5.0
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Mon, 27 Feb 2017 22:51:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:51:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:51:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:30 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:30 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a02a61442fd12c09c5fab7f6812b7034cdf360d886cf542eeac037b54d5807d`  
		Last Modified: Wed, 01 Mar 2017 22:57:36 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cb2a00aca2b39450f8c636fb50d286a1936a81841d40f1cf628e716efc97d`  
		Last Modified: Wed, 01 Mar 2017 22:58:11 GMT  
		Size: 128.5 MB (128468552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be43f80b348487a83418a874f7669848b797bc0a3437d5aeb388824e30592d3c`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076cadfbcbfd6ca475b9fedff094009e79de08a72fff2aab7869e392200abfd0`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2087b03b9a50bbff986262a66e1ceb96bde0e263888f3934a5fa09ea11a7f9a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e033b7e3bf430ebde60bea28dd47e342ae747d9d8d25ebc342044d2e0c1f63`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea2af4fd0fecaa1cde6e43920877366fc1489e8585e9fd575286f0a6beba8a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.0`

```console
$ docker pull couchbase@sha256:d56cdc76187300e59db46147521b2b6f7261a154b8772c0db5a017068d5f082c
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205594604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ebbceca09e82485e5c41afd107514a5105049693a5c11f7265a80f14838a82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_VERSION=4.5.0
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Mon, 27 Feb 2017 22:51:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:51:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:51:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:30 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:30 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a02a61442fd12c09c5fab7f6812b7034cdf360d886cf542eeac037b54d5807d`  
		Last Modified: Wed, 01 Mar 2017 22:57:36 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cb2a00aca2b39450f8c636fb50d286a1936a81841d40f1cf628e716efc97d`  
		Last Modified: Wed, 01 Mar 2017 22:58:11 GMT  
		Size: 128.5 MB (128468552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be43f80b348487a83418a874f7669848b797bc0a3437d5aeb388824e30592d3c`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076cadfbcbfd6ca475b9fedff094009e79de08a72fff2aab7869e392200abfd0`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2087b03b9a50bbff986262a66e1ceb96bde0e263888f3934a5fa09ea11a7f9a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e033b7e3bf430ebde60bea28dd47e342ae747d9d8d25ebc342044d2e0c1f63`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea2af4fd0fecaa1cde6e43920877366fc1489e8585e9fd575286f0a6beba8a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:02ef3baf6174e654863468457f98a4f0d3380ece0880ce9a90a21b4e549a6ea9
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271950176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7b8f02e840253ae18309e8855d70ce40609046b7aedfd33ddfc8e85b0c4453`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:49:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:49:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_VERSION=3.1.6
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Mon, 27 Feb 2017 22:49:27 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Mon, 27 Feb 2017 22:49:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:49:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:49:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:49:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:49:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:49:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:49:59 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:49:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:50:00 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:50:00 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:50:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda8173e0be7c0987738423fcd65ffd891d8add7947f83df9274ed6bfcdb10a3`  
		Last Modified: Wed, 01 Mar 2017 22:56:00 GMT  
		Size: 9.5 MB (9471825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39f9822bc5bec1c37e50108710fc458cd2516421fac77aaf0367ffecc4f8e9d`  
		Last Modified: Wed, 01 Mar 2017 22:55:54 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148180474d5c76673fd53070db85e1d204449fd6859e8a6e2132a62302986c36`  
		Last Modified: Wed, 01 Mar 2017 22:56:54 GMT  
		Size: 213.1 MB (213061811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465137965fb4d84a710b1e9ec011e210cef525decc8555b2312f57cbac0f40c2`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda3ef43fe4a96daf4143730919616e294960b59b2ffb8dc24afcda28ad666d8`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4462f5d6b2047973b3368492c32af0ce484bc8b87ece0f58802b36c85dcb16`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3e5e603a871a793b0e7d8a30938332adefa96abab5df958f216c55a146183c`  
		Last Modified: Wed, 01 Mar 2017 22:55:55 GMT  
		Size: 10.3 MB (10275400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f74a484507bacf731773c254b48b9d8ead792ecebf67a3d31ce8b0df8110c06`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:02ef3baf6174e654863468457f98a4f0d3380ece0880ce9a90a21b4e549a6ea9
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271950176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7b8f02e840253ae18309e8855d70ce40609046b7aedfd33ddfc8e85b0c4453`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:49:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:49:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_VERSION=3.1.6
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:49:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Mon, 27 Feb 2017 22:49:27 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Mon, 27 Feb 2017 22:49:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:49:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:49:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:49:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:49:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:49:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:49:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:49:59 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:49:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:50:00 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:50:00 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:50:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda8173e0be7c0987738423fcd65ffd891d8add7947f83df9274ed6bfcdb10a3`  
		Last Modified: Wed, 01 Mar 2017 22:56:00 GMT  
		Size: 9.5 MB (9471825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39f9822bc5bec1c37e50108710fc458cd2516421fac77aaf0367ffecc4f8e9d`  
		Last Modified: Wed, 01 Mar 2017 22:55:54 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148180474d5c76673fd53070db85e1d204449fd6859e8a6e2132a62302986c36`  
		Last Modified: Wed, 01 Mar 2017 22:56:54 GMT  
		Size: 213.1 MB (213061811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465137965fb4d84a710b1e9ec011e210cef525decc8555b2312f57cbac0f40c2`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda3ef43fe4a96daf4143730919616e294960b59b2ffb8dc24afcda28ad666d8`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4462f5d6b2047973b3368492c32af0ce484bc8b87ece0f58802b36c85dcb16`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3e5e603a871a793b0e7d8a30938332adefa96abab5df958f216c55a146183c`  
		Last Modified: Wed, 01 Mar 2017 22:55:55 GMT  
		Size: 10.3 MB (10275400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f74a484507bacf731773c254b48b9d8ead792ecebf67a3d31ce8b0df8110c06`  
		Last Modified: Wed, 01 Mar 2017 22:55:52 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:f58b14ab5f17576c6bf50f010b29c3e229f13495dfae8c564f9e01e080875177
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272040229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6b57507bc63995083bf8bc788dbefbc8e3c9ec8f6e8c2a0462b87da3d33362`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:49:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:49:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 27 Feb 2017 22:51:32 GMT
ARG CB_VERSION=3.1.3
# Mon, 27 Feb 2017 22:51:32 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:51:33 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Mon, 27 Feb 2017 22:51:33 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Mon, 27 Feb 2017 22:51:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:51:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:52:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:52:10 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:52:10 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:52:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:52:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:52:13 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:52:14 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:52:14 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:52:15 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda8173e0be7c0987738423fcd65ffd891d8add7947f83df9274ed6bfcdb10a3`  
		Last Modified: Wed, 01 Mar 2017 22:56:00 GMT  
		Size: 9.5 MB (9471825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be264a77dad8aea85443153eea7d56ed3ca5681433414767e7ec2673e32b1acf`  
		Last Modified: Wed, 01 Mar 2017 22:58:56 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acf9140658f3fa80aaaf4d9d0647ba7ca31ec8f1b1c0f4357041f894183a5dc`  
		Last Modified: Wed, 01 Mar 2017 22:59:55 GMT  
		Size: 213.2 MB (213151834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a72a8a546013cac0dec645960867e193541adcaefbd0a18e3f9e47c1132b4`  
		Last Modified: Wed, 01 Mar 2017 22:58:54 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef7f836c3658f94003c10a8bee257cec0f3a63477016886b158400a290e32a5`  
		Last Modified: Wed, 01 Mar 2017 22:58:54 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185726076e39eb2dd2c7c34cc300f094e8246de138498798eff87ca77cfa3d90`  
		Last Modified: Wed, 01 Mar 2017 22:58:54 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd1116321899fa09c65503965dc402b70c5a4d871eb48c8d9afeb2bb5d461ff`  
		Last Modified: Wed, 01 Mar 2017 22:58:58 GMT  
		Size: 10.3 MB (10275428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac819eb81ec7fa5dab553a6eabeb63f689426751dd89e894ef24145b6dfd025`  
		Last Modified: Wed, 01 Mar 2017 22:58:54 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
