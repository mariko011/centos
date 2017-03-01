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
