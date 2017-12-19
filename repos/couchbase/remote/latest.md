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
