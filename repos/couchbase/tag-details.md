<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.3`](#couchbase463)
-	[`couchbase:5.0.0`](#couchbase500)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.0`](#couchbasecommunity-500)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.3`](#couchbaseenterprise-463)
-	[`couchbase:enterprise-5.0.0`](#couchbaseenterprise-500)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.3`

```console
$ docker pull couchbase@sha256:5cfd870a38041a45d1bfd6c213e75919a5023c6725649c81c0d0ed482ad1c023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:23905f3bbbd60f7ed3fc81682aa6ad1fea2feacc3f0237a4e00516ccf7c2054b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213060621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6a4f09bfb71eb518ac1c71f5d12f390e8e23744dd6cb2cb31edda0160cf847`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:29:54 GMT
ARG CB_VERSION=4.6.3
# Sat, 04 Nov 2017 11:29:54 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:29:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:29:55 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Sat, 04 Nov 2017 11:29:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:30:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:30:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:30:20 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:30:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:30:22 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:30:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:30:22 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:30:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:30:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b958cccccf892b302d12517917105ed5387f1b8a8ee8be0251e9f7036debe`  
		Last Modified: Sat, 04 Nov 2017 11:33:00 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9d6eeeccf6559108e719b2bcb4123941d3379e9b413c863e751f12b479e341`  
		Last Modified: Sat, 04 Nov 2017 11:34:05 GMT  
		Size: 134.4 MB (134370626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8f761e9d5d479fa410564f206bb9d7bed0a30b49b149ef507c3ca8e56dd716`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c22dd4658d26ae3e005b086f76463e4057c82662853c1996f18b6bebc0418c`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffc9739c801ac781297b898080016eeddd1f9b80a0446db2ffcb593d5e4a33`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f223339927675e190880d07ee6b1e3dc89331aff8b1661c84a7b78a9a39c9`  
		Last Modified: Sat, 04 Nov 2017 11:32:58 GMT  
		Size: 105.4 KB (105404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a43f7ab9e4910fdfc40904bc71218b22d16b9c1d42a330d8960b995e220ec2d`  
		Last Modified: Sat, 04 Nov 2017 11:32:58 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.0.0`

```console
$ docker pull couchbase@sha256:1b0d067be4b95fb3efd1cbf3ceb28d009ee40f11190e0e0279c751317153577e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:dc08f4d35bd02f3422004fe338c69a37904a3d28ac04e9314e4f2cfe6019730c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221052334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112a0ba74fd0bb8aa7e09c86d5dedfb288f6cc574a64d4bcb1aded1785594dc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 04 Nov 2017 11:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:29:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:29:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:29:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:29:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:29:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:29:39 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:29:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:29:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d689637feeafb93cbac5fb54c4fef482aba897db233a669530075981d36af699`  
		Last Modified: Sat, 04 Nov 2017 11:31:49 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5409c92b9d05ea9f8de330f182e895524339f327a8042d27c98e9f286c48`  
		Last Modified: Sat, 04 Nov 2017 11:32:26 GMT  
		Size: 142.4 MB (142362333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbbbe42767c93ce61c2699236c8a0791d9cb12ae4c6d102c135356931a10a`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07bfe71db8c74d556de48da426924836d6cd6939e5799cdf2ccf0d60ca796c`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3aaa4a39635c88b21c8818a5b15af11009af6ae1f448ea89581fc25de3ea`  
		Last Modified: Sat, 04 Nov 2017 11:31:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febf16e039cbafa508653d90dfffcda86c1cbc24e86fd77ea1f468bc32330842`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c78b4bdb46e50248e32e7f3ec9c7f48c12a688b1f7c51cd2bb38b2d7cb2ee2`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:c7674b3229ad989c268347ec44735ff30e4fda36ea601018fe9f660904e1e5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:0df21f2f04c93c52c434508e0eab56489cf3da3c034f133524c45daf86bbc029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211020147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c81fc4068dd69e80f700afa063bc2082d56c48b7cd0801c895976082ca12c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 04 Nov 2017 11:30:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:30:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:30:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:30:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:30:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:30:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:30:57 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:30:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:30:58 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:30:58 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:30:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4d23edbf2499119c9352f7027725b4361e1cf83eb48274130bad8d28f184c0`  
		Last Modified: Sat, 04 Nov 2017 11:34:25 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beb87655ff42f79acb575eb3700fda18552f8856ae59d55fdc106cfe2e47a98`  
		Last Modified: Sat, 04 Nov 2017 11:34:42 GMT  
		Size: 132.3 MB (132330154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa8080e4f153c20b6c80d2222986bf3e57f006517c1474dfd717970aab771c`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289809179ef4f7decf34d0b43d7af6d92f6b5b7bc4b10ea57eb1b1c402479b73`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809b15aa5bd564ac6c10fd071749ea087a074b2cb25dc5a209fe37755cd2bdb`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a90e309c391c9cf87fac6442719fa99c5af22c105caacf5b0a817270e29df`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182cf8094e9cbc58998d40e4ca3a53f180b08c8eb580ceeeb7bc8af91f13574`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:9a5088d9e015ae6ce580ebe7a42e67b1f8d648422078a06413b773a10d3b1acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:c25aa79c05f94559540fc3ba88acbd35f82a2bdb0277cb0a0193b3cfc2c49e64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209768819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9814ec02fd301903f501c23a4d033e2bd95ed18eafe45613eecba5ae9bf243f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:31:05 GMT
ARG CB_VERSION=4.5.1
# Sat, 04 Nov 2017 11:31:05 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:31:05 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:31:05 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Sat, 04 Nov 2017 11:31:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:31:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:31:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:31:31 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:31:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:31:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:31:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:31:33 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:31:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:31:34 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:31:34 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:31:34 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0702405615024b86defd4db6d14d67669df4ea7697ed63eaa390524dce837fa`  
		Last Modified: Sat, 04 Nov 2017 11:35:22 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90880d46e83ba68c8fbb736213311d5bb3df2eaac0dd6e9474809fdd2692d502`  
		Last Modified: Sat, 04 Nov 2017 11:35:49 GMT  
		Size: 131.1 MB (131078833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493bbdaa6cfcb0892c83895280a7c662c27d1f4b3b678d58cb8d456f45438e92`  
		Last Modified: Sat, 04 Nov 2017 11:35:21 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb63d4b678a95a7a2b2b325bcff700a8706c7b7a51272f53ba082ac2e9a85e6`  
		Last Modified: Sat, 04 Nov 2017 11:35:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cc1f059cf4abafd7fddfb9c3eb5372b809c36bdcd9d582ea143f68f6b60dad`  
		Last Modified: Sat, 04 Nov 2017 11:35:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf18409ff9a001d7ce96102f9beeae6a9528499d589e8a96001a245cf071c08d`  
		Last Modified: Sat, 04 Nov 2017 11:35:20 GMT  
		Size: 105.4 KB (105400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d5229baa0a5995065b84446169ce9f9046c16785bf81f1f4249f8049cd95f3`  
		Last Modified: Sat, 04 Nov 2017 11:35:20 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:c7674b3229ad989c268347ec44735ff30e4fda36ea601018fe9f660904e1e5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:0df21f2f04c93c52c434508e0eab56489cf3da3c034f133524c45daf86bbc029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211020147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c81fc4068dd69e80f700afa063bc2082d56c48b7cd0801c895976082ca12c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 04 Nov 2017 11:30:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:30:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:30:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:30:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:30:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:30:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:30:57 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:30:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:30:58 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:30:58 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:30:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4d23edbf2499119c9352f7027725b4361e1cf83eb48274130bad8d28f184c0`  
		Last Modified: Sat, 04 Nov 2017 11:34:25 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beb87655ff42f79acb575eb3700fda18552f8856ae59d55fdc106cfe2e47a98`  
		Last Modified: Sat, 04 Nov 2017 11:34:42 GMT  
		Size: 132.3 MB (132330154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa8080e4f153c20b6c80d2222986bf3e57f006517c1474dfd717970aab771c`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289809179ef4f7decf34d0b43d7af6d92f6b5b7bc4b10ea57eb1b1c402479b73`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809b15aa5bd564ac6c10fd071749ea087a074b2cb25dc5a209fe37755cd2bdb`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a90e309c391c9cf87fac6442719fa99c5af22c105caacf5b0a817270e29df`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182cf8094e9cbc58998d40e4ca3a53f180b08c8eb580ceeeb7bc8af91f13574`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:1b0d067be4b95fb3efd1cbf3ceb28d009ee40f11190e0e0279c751317153577e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:dc08f4d35bd02f3422004fe338c69a37904a3d28ac04e9314e4f2cfe6019730c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221052334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112a0ba74fd0bb8aa7e09c86d5dedfb288f6cc574a64d4bcb1aded1785594dc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 04 Nov 2017 11:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:29:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:29:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:29:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:29:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:29:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:29:39 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:29:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:29:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d689637feeafb93cbac5fb54c4fef482aba897db233a669530075981d36af699`  
		Last Modified: Sat, 04 Nov 2017 11:31:49 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5409c92b9d05ea9f8de330f182e895524339f327a8042d27c98e9f286c48`  
		Last Modified: Sat, 04 Nov 2017 11:32:26 GMT  
		Size: 142.4 MB (142362333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbbbe42767c93ce61c2699236c8a0791d9cb12ae4c6d102c135356931a10a`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07bfe71db8c74d556de48da426924836d6cd6939e5799cdf2ccf0d60ca796c`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3aaa4a39635c88b21c8818a5b15af11009af6ae1f448ea89581fc25de3ea`  
		Last Modified: Sat, 04 Nov 2017 11:31:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febf16e039cbafa508653d90dfffcda86c1cbc24e86fd77ea1f468bc32330842`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c78b4bdb46e50248e32e7f3ec9c7f48c12a688b1f7c51cd2bb38b2d7cb2ee2`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.6.3`

```console
$ docker pull couchbase@sha256:5cfd870a38041a45d1bfd6c213e75919a5023c6725649c81c0d0ed482ad1c023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:23905f3bbbd60f7ed3fc81682aa6ad1fea2feacc3f0237a4e00516ccf7c2054b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213060621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6a4f09bfb71eb518ac1c71f5d12f390e8e23744dd6cb2cb31edda0160cf847`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:29:54 GMT
ARG CB_VERSION=4.6.3
# Sat, 04 Nov 2017 11:29:54 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:29:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:29:55 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Sat, 04 Nov 2017 11:29:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:30:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:30:20 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:30:20 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:30:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:30:22 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:30:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:30:22 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:30:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:30:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b958cccccf892b302d12517917105ed5387f1b8a8ee8be0251e9f7036debe`  
		Last Modified: Sat, 04 Nov 2017 11:33:00 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9d6eeeccf6559108e719b2bcb4123941d3379e9b413c863e751f12b479e341`  
		Last Modified: Sat, 04 Nov 2017 11:34:05 GMT  
		Size: 134.4 MB (134370626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8f761e9d5d479fa410564f206bb9d7bed0a30b49b149ef507c3ca8e56dd716`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c22dd4658d26ae3e005b086f76463e4057c82662853c1996f18b6bebc0418c`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bffc9739c801ac781297b898080016eeddd1f9b80a0446db2ffcb593d5e4a33`  
		Last Modified: Sat, 04 Nov 2017 11:32:57 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f223339927675e190880d07ee6b1e3dc89331aff8b1661c84a7b78a9a39c9`  
		Last Modified: Sat, 04 Nov 2017 11:32:58 GMT  
		Size: 105.4 KB (105404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a43f7ab9e4910fdfc40904bc71218b22d16b9c1d42a330d8960b995e220ec2d`  
		Last Modified: Sat, 04 Nov 2017 11:32:58 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.0.0`

```console
$ docker pull couchbase@sha256:1b0d067be4b95fb3efd1cbf3ceb28d009ee40f11190e0e0279c751317153577e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:dc08f4d35bd02f3422004fe338c69a37904a3d28ac04e9314e4f2cfe6019730c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221052334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112a0ba74fd0bb8aa7e09c86d5dedfb288f6cc574a64d4bcb1aded1785594dc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 04 Nov 2017 11:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:29:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:29:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:29:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:29:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:29:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:29:39 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:29:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:29:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d689637feeafb93cbac5fb54c4fef482aba897db233a669530075981d36af699`  
		Last Modified: Sat, 04 Nov 2017 11:31:49 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5409c92b9d05ea9f8de330f182e895524339f327a8042d27c98e9f286c48`  
		Last Modified: Sat, 04 Nov 2017 11:32:26 GMT  
		Size: 142.4 MB (142362333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbbbe42767c93ce61c2699236c8a0791d9cb12ae4c6d102c135356931a10a`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07bfe71db8c74d556de48da426924836d6cd6939e5799cdf2ccf0d60ca796c`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3aaa4a39635c88b21c8818a5b15af11009af6ae1f448ea89581fc25de3ea`  
		Last Modified: Sat, 04 Nov 2017 11:31:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febf16e039cbafa508653d90dfffcda86c1cbc24e86fd77ea1f468bc32330842`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c78b4bdb46e50248e32e7f3ec9c7f48c12a688b1f7c51cd2bb38b2d7cb2ee2`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:1b0d067be4b95fb3efd1cbf3ceb28d009ee40f11190e0e0279c751317153577e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:dc08f4d35bd02f3422004fe338c69a37904a3d28ac04e9314e4f2cfe6019730c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221052334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112a0ba74fd0bb8aa7e09c86d5dedfb288f6cc574a64d4bcb1aded1785594dc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e
# Sat, 04 Nov 2017 11:28:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:29:00 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:29:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:29:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:29:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:29:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=005130365956507ff14772cd8412aa8ff4793996bd88295e5bb684c625865c4e CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:29:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:29:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:29:39 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:29:39 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:29:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d689637feeafb93cbac5fb54c4fef482aba897db233a669530075981d36af699`  
		Last Modified: Sat, 04 Nov 2017 11:31:49 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd5409c92b9d05ea9f8de330f182e895524339f327a8042d27c98e9f286c48`  
		Last Modified: Sat, 04 Nov 2017 11:32:26 GMT  
		Size: 142.4 MB (142362333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894cbbbe42767c93ce61c2699236c8a0791d9cb12ae4c6d102c135356931a10a`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f07bfe71db8c74d556de48da426924836d6cd6939e5799cdf2ccf0d60ca796c`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113d3aaa4a39635c88b21c8818a5b15af11009af6ae1f448ea89581fc25de3ea`  
		Last Modified: Sat, 04 Nov 2017 11:31:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febf16e039cbafa508653d90dfffcda86c1cbc24e86fd77ea1f468bc32330842`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c78b4bdb46e50248e32e7f3ec9c7f48c12a688b1f7c51cd2bb38b2d7cb2ee2`  
		Last Modified: Sat, 04 Nov 2017 11:31:47 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
