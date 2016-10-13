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
