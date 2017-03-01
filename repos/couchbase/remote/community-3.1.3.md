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
