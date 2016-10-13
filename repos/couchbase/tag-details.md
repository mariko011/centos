<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.5.1`](#couchbase451)
-	[`couchbase:enterprise-4.5.1`](#couchbaseenterprise-451)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.1.0`](#couchbasecommunity-410)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.5.1`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.5.1`

```console
$ docker pull couchbase@sha256:84b8e7caa453597d71ec9a3d14c4244d881b39ae9a52bfcb2cc54bbe5154d091
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ee511b6d13583d724a664edbd7b0d595dd754895a3d45cbdb63cd66427c81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:52:25 GMT
ARG CB_VERSION=4.5.1
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:52:26 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Thu, 13 Oct 2016 21:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:52:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:52:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:52:52 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:52:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:52:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:52:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:52:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:52:56 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:52:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:52:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565b9c32ac2b8f210c4713a8524855eb01c17df7e82a1fa317a0e5b942688ba`  
		Last Modified: Thu, 13 Oct 2016 21:53:09 GMT  
		Size: 1.9 KB (1852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8163eba49590af3891488a01345e246b774c7c45967a7a288d07db73ec4bae68`  
		Last Modified: Thu, 13 Oct 2016 21:53:41 GMT  
		Size: 131.6 MB (131574147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684db416d96f639d09ba831dc56dc59daaa52c32d8c67ad777276b6286d1401c`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f43fda904371141ab4e35de1e335a607478520ca7cab57113ca89d1b844f75`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c91a9b71f4853529cd9a363bb8f507334e904a6202aada67e0ab25e2d6ae3`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c9ad0cf4736d3014d931714371f86fd4ee8bb36c4ed2ff79f1b2fbaf1dec7b`  
		Last Modified: Thu, 13 Oct 2016 21:53:05 GMT  
		Size: 103.2 KB (103215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440ae48b968e53d5711ad2c0e20a5e5e435511d990993a936e58967f53fb6158`  
		Last Modified: Thu, 13 Oct 2016 21:53:06 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:6b3b4458f1d7734623122f6d413fc158a8eb8d2941ac471b2d911b164321ae4b
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164371069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a72d7104c781ebd6d1a6f6cd7d21fa91caf16c9c3b6f5bf63fc808c750cffc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_VERSION=4.1.0
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:54:22 GMT
ARG CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea
# Thu, 13 Oct 2016 21:54:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:54:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:54:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:54:42 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:54:43 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:54:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:54:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:54:45 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:54:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:54:45 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:54:46 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:54:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705a5e0d7ec2b9df96cd7c1d25aec934aac1bfd0c9dd1079096a588d370ae641`  
		Last Modified: Thu, 13 Oct 2016 21:54:57 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a592a9cbb4e5d55cd5708ad25655e33c26d797435dcad053a13cb2ec72da318c`  
		Last Modified: Thu, 13 Oct 2016 21:55:19 GMT  
		Size: 87.2 MB (87238736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453b6d2099db225b32a6a6bc5e7411388496b232a6b3ae0b2b47e64499fe33fa`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ae91d1d5bd013e6802f83bdf8a2edbf0036cabb1832f9e69e90e7545060c94`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4867bc08951f86402e5377d6175d3ddbfa6f893c3c4fe5596e8bf70f52cad2b`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c736be6694fedf973ecba14f482f3465644abd25ca1a5c250fb311144fd7a`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8706e47587f347ba75444e826f76b2eec1ab9d0f943c4260f67ddef25c7478`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.1.0`

```console
$ docker pull couchbase@sha256:6b3b4458f1d7734623122f6d413fc158a8eb8d2941ac471b2d911b164321ae4b
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164371069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a72d7104c781ebd6d1a6f6cd7d21fa91caf16c9c3b6f5bf63fc808c750cffc3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:51:56 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 13 Oct 2016 21:52:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_VERSION=4.1.0
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 13 Oct 2016 21:54:21 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb
# Thu, 13 Oct 2016 21:54:22 GMT
ARG CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea
# Thu, 13 Oct 2016 21:54:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 13 Oct 2016 21:54:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 13 Oct 2016 21:54:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 13 Oct 2016 21:54:42 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 13 Oct 2016 21:54:43 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 13 Oct 2016 21:54:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 13 Oct 2016 21:54:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea CB_VERSION=4.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 13 Oct 2016 21:54:45 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 13 Oct 2016 21:54:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Oct 2016 21:54:45 GMT
CMD ["couchbase-server"]
# Thu, 13 Oct 2016 21:54:46 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 13 Oct 2016 21:54:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ddeb60c4f9f5f84cc4f528259c7ad7e11f7284e30e1917d1aa136c4a6f1aa4`  
		Last Modified: Thu, 13 Oct 2016 21:53:12 GMT  
		Size: 11.3 MB (11254535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705a5e0d7ec2b9df96cd7c1d25aec934aac1bfd0c9dd1079096a588d370ae641`  
		Last Modified: Thu, 13 Oct 2016 21:54:57 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a592a9cbb4e5d55cd5708ad25655e33c26d797435dcad053a13cb2ec72da318c`  
		Last Modified: Thu, 13 Oct 2016 21:55:19 GMT  
		Size: 87.2 MB (87238736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453b6d2099db225b32a6a6bc5e7411388496b232a6b3ae0b2b47e64499fe33fa`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ae91d1d5bd013e6802f83bdf8a2edbf0036cabb1832f9e69e90e7545060c94`  
		Last Modified: Thu, 13 Oct 2016 21:54:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4867bc08951f86402e5377d6175d3ddbfa6f893c3c4fe5596e8bf70f52cad2b`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c736be6694fedf973ecba14f482f3465644abd25ca1a5c250fb311144fd7a`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8706e47587f347ba75444e826f76b2eec1ab9d0f943c4260f67ddef25c7478`  
		Last Modified: Thu, 13 Oct 2016 21:54:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:298519a081dd592655921e91c79aecbe3a7741cae04b5a3f8f06bda3b7bec6a6
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271969980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f1193cc3a21c93e23cd710872e202d2533b058c8a125c184bc07e9d83a5f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 26 Sep 2016 21:25:47 GMT
ADD file:bdf72fc0b3a15cd302c82805976b19db5411813d254365a8c4747ea725f996f2 in / 
# Mon, 26 Sep 2016 21:25:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:25:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:25:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:25:51 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:41:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 26 Sep 2016 21:41:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 30 Sep 2016 18:13:55 GMT
ARG CB_VERSION=3.1.6
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Fri, 30 Sep 2016 18:13:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 30 Sep 2016 18:13:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 30 Sep 2016 18:14:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 30 Sep 2016 18:14:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 30 Sep 2016 18:14:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 30 Sep 2016 18:14:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 30 Sep 2016 18:14:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 30 Sep 2016 18:14:44 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 30 Sep 2016 18:14:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 18:14:45 GMT
CMD ["couchbase-server"]
# Fri, 30 Sep 2016 18:14:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 30 Sep 2016 18:14:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:36cef014d5d470035ece40ed7cd930edc93631b6dae147886c90370b514e82af`  
		Last Modified: Mon, 26 Sep 2016 21:26:57 GMT  
		Size: 39.1 MB (39081844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d99ad4de1d223a1da439939c2dbaefcdd4629deaccf1a226e90192d77010ebb`  
		Last Modified: Mon, 26 Sep 2016 21:26:47 GMT  
		Size: 57.9 KB (57935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32dbf1ab94979e94b82c84cf144b48588d5171593546170307e1709d7de76c`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44710c456ffc78f0534a26c5981042772cfbc6006a59bffbebecf98cf953c476`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e70ac3b314500b3da39498c9489030e953cbf928637869ae3fad475a29c47b`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38d0ab9f71b5b6d26b48ff354f7ea27cd6463574097d072c2c981771e794e9a`  
		Last Modified: Mon, 26 Sep 2016 21:42:59 GMT  
		Size: 9.5 MB (9470426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069fc85e7a01306697bb80cca3b8e352933cf6fe1028f910a64cc890184bbd74`  
		Last Modified: Fri, 30 Sep 2016 18:18:03 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60214754e9d808871c6066b4a1a0b9322626cc05ac4374704f637655961d8335`  
		Last Modified: Fri, 30 Sep 2016 18:18:55 GMT  
		Size: 213.1 MB (213080296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5942c016a329c3d6eef0a25fe4d542eb8b5943e1f55df3c1957134d2b27f1`  
		Last Modified: Fri, 30 Sep 2016 18:18:02 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1941725c5cef1e45bc1269784c2b617d71becf84ea29d212c99bb6bd21b486`  
		Last Modified: Fri, 30 Sep 2016 18:18:00 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1ecb1fa6f7b106421dc6a3881abc37262655cd5782a5aa3c5d172ba4d92a6`  
		Last Modified: Fri, 30 Sep 2016 18:17:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a24b5a5aa4671f16fb5d3ea949a0ddc81f8e0f1309e09f45b636cc1ded76016`  
		Last Modified: Fri, 30 Sep 2016 18:18:01 GMT  
		Size: 10.3 MB (10275420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a3faf43d23ee232c2e03fa36f347e6911ea23bb3a485c888ddc1d1afce8361`  
		Last Modified: Fri, 30 Sep 2016 18:17:58 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:298519a081dd592655921e91c79aecbe3a7741cae04b5a3f8f06bda3b7bec6a6
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271969980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f1193cc3a21c93e23cd710872e202d2533b058c8a125c184bc07e9d83a5f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 26 Sep 2016 21:25:47 GMT
ADD file:bdf72fc0b3a15cd302c82805976b19db5411813d254365a8c4747ea725f996f2 in / 
# Mon, 26 Sep 2016 21:25:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:25:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:25:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:25:51 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:41:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 26 Sep 2016 21:41:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 30 Sep 2016 18:13:55 GMT
ARG CB_VERSION=3.1.6
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Fri, 30 Sep 2016 18:13:56 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Fri, 30 Sep 2016 18:13:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 30 Sep 2016 18:13:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 30 Sep 2016 18:14:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 30 Sep 2016 18:14:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 30 Sep 2016 18:14:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 30 Sep 2016 18:14:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 30 Sep 2016 18:14:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 30 Sep 2016 18:14:44 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 30 Sep 2016 18:14:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 18:14:45 GMT
CMD ["couchbase-server"]
# Fri, 30 Sep 2016 18:14:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 30 Sep 2016 18:14:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:36cef014d5d470035ece40ed7cd930edc93631b6dae147886c90370b514e82af`  
		Last Modified: Mon, 26 Sep 2016 21:26:57 GMT  
		Size: 39.1 MB (39081844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d99ad4de1d223a1da439939c2dbaefcdd4629deaccf1a226e90192d77010ebb`  
		Last Modified: Mon, 26 Sep 2016 21:26:47 GMT  
		Size: 57.9 KB (57935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32dbf1ab94979e94b82c84cf144b48588d5171593546170307e1709d7de76c`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44710c456ffc78f0534a26c5981042772cfbc6006a59bffbebecf98cf953c476`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e70ac3b314500b3da39498c9489030e953cbf928637869ae3fad475a29c47b`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38d0ab9f71b5b6d26b48ff354f7ea27cd6463574097d072c2c981771e794e9a`  
		Last Modified: Mon, 26 Sep 2016 21:42:59 GMT  
		Size: 9.5 MB (9470426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069fc85e7a01306697bb80cca3b8e352933cf6fe1028f910a64cc890184bbd74`  
		Last Modified: Fri, 30 Sep 2016 18:18:03 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60214754e9d808871c6066b4a1a0b9322626cc05ac4374704f637655961d8335`  
		Last Modified: Fri, 30 Sep 2016 18:18:55 GMT  
		Size: 213.1 MB (213080296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5942c016a329c3d6eef0a25fe4d542eb8b5943e1f55df3c1957134d2b27f1`  
		Last Modified: Fri, 30 Sep 2016 18:18:02 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1941725c5cef1e45bc1269784c2b617d71becf84ea29d212c99bb6bd21b486`  
		Last Modified: Fri, 30 Sep 2016 18:18:00 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a1ecb1fa6f7b106421dc6a3881abc37262655cd5782a5aa3c5d172ba4d92a6`  
		Last Modified: Fri, 30 Sep 2016 18:17:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a24b5a5aa4671f16fb5d3ea949a0ddc81f8e0f1309e09f45b636cc1ded76016`  
		Last Modified: Fri, 30 Sep 2016 18:18:01 GMT  
		Size: 10.3 MB (10275420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a3faf43d23ee232c2e03fa36f347e6911ea23bb3a485c888ddc1d1afce8361`  
		Last Modified: Fri, 30 Sep 2016 18:17:58 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:b05b362ef4e9ae385d11b8cead1f67f3dd162f7ca60b0dc2f887ff876b6c7bdd
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272041415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3235c3c1887fca95bcd5264a2bb63108d3b5a4ea5555203bbc64926d8b226a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 26 Sep 2016 21:25:47 GMT
ADD file:bdf72fc0b3a15cd302c82805976b19db5411813d254365a8c4747ea725f996f2 in / 
# Mon, 26 Sep 2016 21:25:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:25:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:25:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:25:51 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:41:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 26 Sep 2016 21:41:59 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 30 Sep 2016 18:14:46 GMT
ARG CB_VERSION=3.1.3
# Fri, 30 Sep 2016 18:14:46 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 30 Sep 2016 18:14:47 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Fri, 30 Sep 2016 18:14:47 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Fri, 30 Sep 2016 18:14:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 30 Sep 2016 18:14:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 30 Sep 2016 18:15:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 30 Sep 2016 18:15:24 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 30 Sep 2016 18:15:24 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 30 Sep 2016 18:15:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 30 Sep 2016 18:15:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 30 Sep 2016 18:15:27 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 30 Sep 2016 18:15:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 18:15:28 GMT
CMD ["couchbase-server"]
# Fri, 30 Sep 2016 18:15:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 30 Sep 2016 18:15:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:36cef014d5d470035ece40ed7cd930edc93631b6dae147886c90370b514e82af`  
		Last Modified: Mon, 26 Sep 2016 21:26:57 GMT  
		Size: 39.1 MB (39081844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d99ad4de1d223a1da439939c2dbaefcdd4629deaccf1a226e90192d77010ebb`  
		Last Modified: Mon, 26 Sep 2016 21:26:47 GMT  
		Size: 57.9 KB (57935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32dbf1ab94979e94b82c84cf144b48588d5171593546170307e1709d7de76c`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44710c456ffc78f0534a26c5981042772cfbc6006a59bffbebecf98cf953c476`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e70ac3b314500b3da39498c9489030e953cbf928637869ae3fad475a29c47b`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38d0ab9f71b5b6d26b48ff354f7ea27cd6463574097d072c2c981771e794e9a`  
		Last Modified: Mon, 26 Sep 2016 21:42:59 GMT  
		Size: 9.5 MB (9470426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6f68be8f9b562a8740f7ebbfd5e09fea3f9003feede45cddc40fb134fbe944`  
		Last Modified: Fri, 30 Sep 2016 18:19:27 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307bf5ac76a654bb69f2edb83ae10edb682ec9fc80e6c274156064bc3ebf60d0`  
		Last Modified: Fri, 30 Sep 2016 18:20:20 GMT  
		Size: 213.2 MB (213151755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbbb359dd14227e11d5d98ecfdea09b740d62f848a4ad6187202a131b67e931`  
		Last Modified: Fri, 30 Sep 2016 18:19:24 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1303911203e0735feedf03f2c73779e7145b249f418b1684c14cc42dcf69a`  
		Last Modified: Fri, 30 Sep 2016 18:19:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617cf221da14f3ac7928070e7f3ec8b8774a773492157ed5cf5565c348679a3e`  
		Last Modified: Fri, 30 Sep 2016 18:19:24 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6b2260724faa6dac32457d1b2c6f47d9038d9cfa8a8b50e4a1ec32b319be2e`  
		Last Modified: Fri, 30 Sep 2016 18:19:27 GMT  
		Size: 10.3 MB (10275399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c1c084daddd207c119fa3694f1ea85e4782708572cbe569c85a325247420c1`  
		Last Modified: Fri, 30 Sep 2016 18:19:24 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
