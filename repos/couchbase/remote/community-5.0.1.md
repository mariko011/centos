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
