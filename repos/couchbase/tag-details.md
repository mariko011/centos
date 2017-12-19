<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.4`](#couchbase464)
-	[`couchbase:5.0.1`](#couchbase501)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.1`](#couchbasecommunity-501)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.4`](#couchbaseenterprise-464)
-	[`couchbase:enterprise-5.0.1`](#couchbaseenterprise-501)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.4`

```console
$ docker pull couchbase@sha256:ea5d9c912896dabf658048e0610caf8164bb3d0b64a1d8e6c12993229de88da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:82bf10fa6d76cc2e79ba168ca363d549fd95517b75febeeb69c7b4a3867966d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218873377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e491024b1a096dc54a3fe8c3e445c613d5dd65a5457e994f641971f644cb26d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_VERSION=4.6.4
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 14 Dec 2017 21:44:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Dec 2017 21:44:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Dec 2017 21:44:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Dec 2017 21:44:37 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 14 Dec 2017 21:44:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Dec 2017 21:44:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Dec 2017 21:44:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Dec 2017 21:44:39 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 14 Dec 2017 21:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 21:44:39 GMT
CMD ["couchbase-server"]
# Thu, 14 Dec 2017 21:44:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Dec 2017 21:44:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b77a867168270c8931cc17eae44d0ffc5e35283a8bbba18f682f829980df86`  
		Last Modified: Thu, 14 Dec 2017 21:48:32 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2dbe48e6b9751064c68d9cc8f1cefa3a899f946f6f85e523281dc5e515f33b`  
		Last Modified: Thu, 14 Dec 2017 21:48:57 GMT  
		Size: 134.4 MB (134410774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ac39a84af54d7683bd8c582b61e9614736e62d83e539a70f2a15db3a84c19`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6200e52d84a65658c582797d4ea1524693f98e450f90e3b79d4f429d3f5b104b`  
		Last Modified: Thu, 14 Dec 2017 21:48:31 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d75cbd81cec787cc60741b38e4656adc203acfbe50ad47d1c83eb76ce5642ec`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e3861582c3454435bcd5a69ae2ea0c443a454a6ceb4b0cb886aadd0804a0b4`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 105.4 KB (105406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41453d198362db5f6746a7bac40f474d28145a77e8edf4b361d2bbea0b37f73`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.0.1`

```console
$ docker pull couchbase@sha256:0c0dc9c6be5445cb03fc863862c1de775e3c3e739769b739769e864f056029a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:d1dc934b67767a0388b867786e9225c82b58413ddfd1097a30377acba8dadb87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226825358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3174a895f693fe895c6585587f4a3daca96124a5e4d16b947a58838897e28902`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Tue, 19 Dec 2017 04:06:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:06:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:06:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:06:51 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:06:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:06:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:06:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:06:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:06:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:06:54 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:06:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:06:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819cf314950ec690300eb0d8b9549f7a7b2a97ba95dfe0b3b6913a684f2b105`  
		Last Modified: Tue, 19 Dec 2017 04:07:59 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9748fa2caa3733f9c393a1e3dc48859da18c6ad052cd4500866bf1f432b073`  
		Last Modified: Tue, 19 Dec 2017 04:08:21 GMT  
		Size: 142.4 MB (142362762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8ec5c17339571bde0274526257e83f472abe6cc13aecb18ec0f97e5ca9e97`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3088267d3d235510cbbbd86c6d65fff770eaeec9274bacd1d40fd8aa2f4c7810`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319b8cdffe3a36c9ca3338fe2dab383d5d8cfafef6acb6ec98ab58f670942bbb`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2088ec2d6baf6451da87146048a123aca956f7c49bc7d0962ea5b1aab5a660ad`  
		Last Modified: Tue, 19 Dec 2017 04:07:57 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399fbd040b670568eef3f815a0cd08bd36c96c3c360e9719c3b9512111a68156`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:1b5da6dff51053c1280cb13ff4485f8827ec9704c8df70d63cbec9d216c2ac7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:38b948031f3c0dc632c44a285dd12677d86fc8f4780178b4a4908304c7e104b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216795713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd48d2cec0da1779090bc352e5ab3b9ead1870e348c923c59c1e1aecb953b427`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:07:12 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:07:12 GMT
ARG CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d
# Tue, 19 Dec 2017 04:07:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:07:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:07:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:07:29 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:07:29 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:07:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:07:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:07:31 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:07:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:07:31 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:07:31 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:07:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf64ef2ed1f8c87021d8a6d37b353aa09198335b683a1e8931e3adeffa713f`  
		Last Modified: Tue, 19 Dec 2017 04:09:12 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237c6f00b224389244ac301d2b3621060e8f98b6d98733c21d66a79f4369c972`  
		Last Modified: Tue, 19 Dec 2017 04:09:34 GMT  
		Size: 132.3 MB (132333103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218bc53377e22968ef7d124249af63eb9f4bbcc5e6d7ebc82985fec95cbcf03`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c9aef69159743ad2409157de9c748bf7f95d4aaff74bfcabd4409ab8c15692`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344708c0721d62843944642aeb948390fe4e2733df85c04b508e9fa39fc6c98f`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc3d9362b34b931b396239778ac6228c1e366a6219847b28ba782e46d0f694f`  
		Last Modified: Tue, 19 Dec 2017 04:09:10 GMT  
		Size: 105.4 KB (105412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a846bb4235bc262f080672cfa47bd45085ec7c116d272e9a8baa8268d16c455`  
		Last Modified: Tue, 19 Dec 2017 04:09:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:4cc0567845c639a3dc8463eb399296f846ccf9bafcad68a46462a4f30727f45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:7c0b635ded1bd12fa817e1264c5d5abb4c45765cdc83014624a8ee087da0e571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215539381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30f9159564bd934f1c6b175e564a1f3238fb11aa9cbcf4f186badcc03acbfd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Dec 2017 21:46:04 GMT
ARG CB_VERSION=4.5.1
# Thu, 14 Dec 2017 21:46:05 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 14 Dec 2017 21:46:05 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 14 Dec 2017 21:46:05 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 14 Dec 2017 21:46:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Dec 2017 21:46:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Dec 2017 21:46:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Dec 2017 21:46:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 14 Dec 2017 21:46:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Dec 2017 21:46:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Dec 2017 21:46:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Dec 2017 21:46:41 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 14 Dec 2017 21:46:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 21:46:48 GMT
CMD ["couchbase-server"]
# Thu, 14 Dec 2017 21:46:49 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Dec 2017 21:46:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9e2ec521e8ae78fac9cccfd565d3484693b971932262a5952888add68430df`  
		Last Modified: Thu, 14 Dec 2017 21:52:34 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e909a61601a9ab3e4dcaf5847944252c3282521dca25921848e4994ba3bef6`  
		Last Modified: Thu, 14 Dec 2017 21:52:58 GMT  
		Size: 131.1 MB (131076776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb0ec21423e93e97a9f05413c85baccb674dd1344b93fc5908a4d4a87bcebc9`  
		Last Modified: Thu, 14 Dec 2017 21:52:33 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631346498e437922635bb8157c0b28da95dd5cbeab00c54c08ad6cc0f5608ae1`  
		Last Modified: Thu, 14 Dec 2017 21:52:32 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5d551584208fb7b724103f0a777665751badc093d3f494b047b57d9f037c72`  
		Last Modified: Thu, 14 Dec 2017 21:52:32 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569ba086b659cd55b5add85a9410540a1dce57cb833aceeb6d87c3ccc2004e19`  
		Last Modified: Thu, 14 Dec 2017 21:52:33 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638762512794cdb3a050b62ecfef06ed0c229783365e14e77f7be0e08b34828c`  
		Last Modified: Thu, 14 Dec 2017 21:52:32 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:1b5da6dff51053c1280cb13ff4485f8827ec9704c8df70d63cbec9d216c2ac7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:38b948031f3c0dc632c44a285dd12677d86fc8f4780178b4a4908304c7e104b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216795713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd48d2cec0da1779090bc352e5ab3b9ead1870e348c923c59c1e1aecb953b427`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:07:12 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:07:12 GMT
ARG CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d
# Tue, 19 Dec 2017 04:07:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:07:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:07:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:07:29 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:07:29 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:07:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:07:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=d44195f78a3858e6d274ba211b59fb56921823aa567965ac90531f393815fc1d CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:07:31 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:07:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:07:31 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:07:31 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:07:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf64ef2ed1f8c87021d8a6d37b353aa09198335b683a1e8931e3adeffa713f`  
		Last Modified: Tue, 19 Dec 2017 04:09:12 GMT  
		Size: 1.9 KB (1915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237c6f00b224389244ac301d2b3621060e8f98b6d98733c21d66a79f4369c972`  
		Last Modified: Tue, 19 Dec 2017 04:09:34 GMT  
		Size: 132.3 MB (132333103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c218bc53377e22968ef7d124249af63eb9f4bbcc5e6d7ebc82985fec95cbcf03`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c9aef69159743ad2409157de9c748bf7f95d4aaff74bfcabd4409ab8c15692`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344708c0721d62843944642aeb948390fe4e2733df85c04b508e9fa39fc6c98f`  
		Last Modified: Tue, 19 Dec 2017 04:09:09 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc3d9362b34b931b396239778ac6228c1e366a6219847b28ba782e46d0f694f`  
		Last Modified: Tue, 19 Dec 2017 04:09:10 GMT  
		Size: 105.4 KB (105412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a846bb4235bc262f080672cfa47bd45085ec7c116d272e9a8baa8268d16c455`  
		Last Modified: Tue, 19 Dec 2017 04:09:10 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:0c0dc9c6be5445cb03fc863862c1de775e3c3e739769b739769e864f056029a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:d1dc934b67767a0388b867786e9225c82b58413ddfd1097a30377acba8dadb87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226825358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3174a895f693fe895c6585587f4a3daca96124a5e4d16b947a58838897e28902`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Tue, 19 Dec 2017 04:06:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:06:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:06:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:06:51 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:06:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:06:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:06:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:06:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:06:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:06:54 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:06:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:06:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819cf314950ec690300eb0d8b9549f7a7b2a97ba95dfe0b3b6913a684f2b105`  
		Last Modified: Tue, 19 Dec 2017 04:07:59 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9748fa2caa3733f9c393a1e3dc48859da18c6ad052cd4500866bf1f432b073`  
		Last Modified: Tue, 19 Dec 2017 04:08:21 GMT  
		Size: 142.4 MB (142362762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8ec5c17339571bde0274526257e83f472abe6cc13aecb18ec0f97e5ca9e97`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3088267d3d235510cbbbd86c6d65fff770eaeec9274bacd1d40fd8aa2f4c7810`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319b8cdffe3a36c9ca3338fe2dab383d5d8cfafef6acb6ec98ab58f670942bbb`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2088ec2d6baf6451da87146048a123aca956f7c49bc7d0962ea5b1aab5a660ad`  
		Last Modified: Tue, 19 Dec 2017 04:07:57 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399fbd040b670568eef3f815a0cd08bd36c96c3c360e9719c3b9512111a68156`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.4`

```console
$ docker pull couchbase@sha256:ea5d9c912896dabf658048e0610caf8164bb3d0b64a1d8e6c12993229de88da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:82bf10fa6d76cc2e79ba168ca363d549fd95517b75febeeb69c7b4a3867966d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218873377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e491024b1a096dc54a3fe8c3e445c613d5dd65a5457e994f641971f644cb26d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_VERSION=4.6.4
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Thu, 14 Dec 2017 21:44:08 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Thu, 14 Dec 2017 21:44:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Dec 2017 21:44:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Dec 2017 21:44:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Dec 2017 21:44:37 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 14 Dec 2017 21:44:37 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Dec 2017 21:44:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Dec 2017 21:44:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Dec 2017 21:44:39 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 14 Dec 2017 21:44:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Dec 2017 21:44:39 GMT
CMD ["couchbase-server"]
# Thu, 14 Dec 2017 21:44:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Dec 2017 21:44:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b77a867168270c8931cc17eae44d0ffc5e35283a8bbba18f682f829980df86`  
		Last Modified: Thu, 14 Dec 2017 21:48:32 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2dbe48e6b9751064c68d9cc8f1cefa3a899f946f6f85e523281dc5e515f33b`  
		Last Modified: Thu, 14 Dec 2017 21:48:57 GMT  
		Size: 134.4 MB (134410774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ac39a84af54d7683bd8c582b61e9614736e62d83e539a70f2a15db3a84c19`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6200e52d84a65658c582797d4ea1524693f98e450f90e3b79d4f429d3f5b104b`  
		Last Modified: Thu, 14 Dec 2017 21:48:31 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d75cbd81cec787cc60741b38e4656adc203acfbe50ad47d1c83eb76ce5642ec`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e3861582c3454435bcd5a69ae2ea0c443a454a6ceb4b0cb886aadd0804a0b4`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 105.4 KB (105406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41453d198362db5f6746a7bac40f474d28145a77e8edf4b361d2bbea0b37f73`  
		Last Modified: Thu, 14 Dec 2017 21:48:30 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.0.1`

```console
$ docker pull couchbase@sha256:0c0dc9c6be5445cb03fc863862c1de775e3c3e739769b739769e864f056029a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:d1dc934b67767a0388b867786e9225c82b58413ddfd1097a30377acba8dadb87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226825358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3174a895f693fe895c6585587f4a3daca96124a5e4d16b947a58838897e28902`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Tue, 19 Dec 2017 04:06:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:06:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:06:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:06:51 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:06:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:06:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:06:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:06:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:06:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:06:54 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:06:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:06:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819cf314950ec690300eb0d8b9549f7a7b2a97ba95dfe0b3b6913a684f2b105`  
		Last Modified: Tue, 19 Dec 2017 04:07:59 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9748fa2caa3733f9c393a1e3dc48859da18c6ad052cd4500866bf1f432b073`  
		Last Modified: Tue, 19 Dec 2017 04:08:21 GMT  
		Size: 142.4 MB (142362762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8ec5c17339571bde0274526257e83f472abe6cc13aecb18ec0f97e5ca9e97`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3088267d3d235510cbbbd86c6d65fff770eaeec9274bacd1d40fd8aa2f4c7810`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319b8cdffe3a36c9ca3338fe2dab383d5d8cfafef6acb6ec98ab58f670942bbb`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2088ec2d6baf6451da87146048a123aca956f7c49bc7d0962ea5b1aab5a660ad`  
		Last Modified: Tue, 19 Dec 2017 04:07:57 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399fbd040b670568eef3f815a0cd08bd36c96c3c360e9719c3b9512111a68156`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:0c0dc9c6be5445cb03fc863862c1de775e3c3e739769b739769e864f056029a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:d1dc934b67767a0388b867786e9225c82b58413ddfd1097a30377acba8dadb87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226825358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3174a895f693fe895c6585587f4a3daca96124a5e4d16b947a58838897e28902`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:35:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Dec 2017 21:35:51 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 19 Dec 2017 04:06:32 GMT
ARG CB_VERSION=5.0.1
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb
# Tue, 19 Dec 2017 04:06:33 GMT
ARG CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1
# Tue, 19 Dec 2017 04:06:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 19 Dec 2017 04:06:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 19 Dec 2017 04:06:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 19 Dec 2017 04:06:51 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 19 Dec 2017 04:06:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 19 Dec 2017 04:06:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 19 Dec 2017 04:06:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=0b89b9bb27d6b1bdaca272fab01b9d273b553b688b2bd7e525356d26fc175ed1 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 19 Dec 2017 04:06:53 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 19 Dec 2017 04:06:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 19 Dec 2017 04:06:54 GMT
CMD ["couchbase-server"]
# Tue, 19 Dec 2017 04:06:54 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 19 Dec 2017 04:06:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a7de2bfde7f3f7ca95f7e0376f83e5037472d1d0887f8e19ba7921a29073c`  
		Last Modified: Thu, 14 Dec 2017 21:47:18 GMT  
		Size: 11.4 MB (11391152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819cf314950ec690300eb0d8b9549f7a7b2a97ba95dfe0b3b6913a684f2b105`  
		Last Modified: Tue, 19 Dec 2017 04:07:59 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9748fa2caa3733f9c393a1e3dc48859da18c6ad052cd4500866bf1f432b073`  
		Last Modified: Tue, 19 Dec 2017 04:08:21 GMT  
		Size: 142.4 MB (142362762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8ec5c17339571bde0274526257e83f472abe6cc13aecb18ec0f97e5ca9e97`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3088267d3d235510cbbbd86c6d65fff770eaeec9274bacd1d40fd8aa2f4c7810`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319b8cdffe3a36c9ca3338fe2dab383d5d8cfafef6acb6ec98ab58f670942bbb`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2088ec2d6baf6451da87146048a123aca956f7c49bc7d0962ea5b1aab5a660ad`  
		Last Modified: Tue, 19 Dec 2017 04:07:57 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399fbd040b670568eef3f815a0cd08bd36c96c3c360e9719c3b9512111a68156`  
		Last Modified: Tue, 19 Dec 2017 04:07:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
