## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:ac018ab29d9297a518ad66e9ab361bc6e21347ba4bc403e3d8b7dcae73e814b3
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209806799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97b8b07976764d57a2eab1641d20fce3efc3a3643d7d1a681a75ccb7581cc39c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 18:42:40 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 20 Jul 2017 18:43:05 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 20 Jul 2017 18:43:06 GMT
ARG CB_VERSION=4.5.1
# Thu, 20 Jul 2017 18:43:06 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 20 Jul 2017 18:43:07 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 20 Jul 2017 18:43:07 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 20 Jul 2017 18:43:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 20 Jul 2017 18:43:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 20 Jul 2017 18:43:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 20 Jul 2017 18:43:34 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 20 Jul 2017 18:43:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 20 Jul 2017 18:43:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 20 Jul 2017 18:43:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 20 Jul 2017 18:43:38 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 20 Jul 2017 18:43:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 18:43:39 GMT
CMD ["couchbase-server"]
# Thu, 20 Jul 2017 18:43:40 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 20 Jul 2017 18:43:41 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210b21474447bc66a1bbb0a98b4648e9bf2a497aa4132eaa601e3ade93934152`  
		Last Modified: Thu, 20 Jul 2017 18:44:33 GMT  
		Size: 11.4 MB (11443292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a983c64f32ff9d5f559b0d2fb2855b4653b67aca1f7993632dfaad302a3d2f`  
		Last Modified: Thu, 20 Jul 2017 18:44:30 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487524e34dd0f0aa66e6eac5a89d6aec0e1448b5fc93121feb6dcff6d302aba9`  
		Last Modified: Thu, 20 Jul 2017 18:44:47 GMT  
		Size: 131.1 MB (131066528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05965ee2ae030bd8c2c8a21af31d3a80273fac4c4a4c0d10c44235fdd8f7ff28`  
		Last Modified: Thu, 20 Jul 2017 18:44:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813faa860548d730f3fc00e2f8f62da87685a49cb016584c1d21cdb842d6acd`  
		Last Modified: Thu, 20 Jul 2017 18:44:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ca654818e3ba10838ea4a37d9acdcde8b47cb415cb656ba47e6a850049d574`  
		Last Modified: Thu, 20 Jul 2017 18:44:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620bb2976e37d1e8dbc6d1e29a16399e4deba7ade57959167034608ddc9151b7`  
		Last Modified: Thu, 20 Jul 2017 18:44:28 GMT  
		Size: 105.4 KB (105394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebefd6364c525055519df4109ab3c4eac2e17c7607c6d81ae1d13a594de8e287`  
		Last Modified: Thu, 20 Jul 2017 18:44:28 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
