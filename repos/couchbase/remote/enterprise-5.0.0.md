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
