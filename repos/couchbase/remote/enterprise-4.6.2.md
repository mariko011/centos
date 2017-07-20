## `couchbase:enterprise-4.6.2`

```console
$ docker pull couchbase@sha256:393085e0d58c0c3cdc373fa83ddb5e92d9d6a670327026e31e33a8f4ebc40ba9
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215106198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b64b84302cc22a2fd3e2906f001eaecf48daedd82894331ad625411c0be3be`
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
# Thu, 20 Jul 2017 18:43:49 GMT
ARG CB_VERSION=4.6.2
# Thu, 20 Jul 2017 18:43:49 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 20 Jul 2017 18:43:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb
# Thu, 20 Jul 2017 18:43:50 GMT
ARG CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6
# Thu, 20 Jul 2017 18:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 20 Jul 2017 18:43:52 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 20 Jul 2017 18:44:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 20 Jul 2017 18:44:11 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 20 Jul 2017 18:44:12 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 20 Jul 2017 18:44:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 20 Jul 2017 18:44:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.2-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=57340f1acb55041385dc28574e20aef591a898d07163ed56a52bd412dadb8cb6 CB_VERSION=4.6.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 20 Jul 2017 18:44:15 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 20 Jul 2017 18:44:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Jul 2017 18:44:16 GMT
CMD ["couchbase-server"]
# Thu, 20 Jul 2017 18:44:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 20 Jul 2017 18:44:17 GMT
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
	-	`sha256:ad658e4a4fb98446d8c0c547743a634fcd3614c79706826695576f74ea76f11d`  
		Last Modified: Thu, 20 Jul 2017 18:45:14 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71326cb7f63636b51b6d3d165734ec547a2f006e395060dcd8dc8d010def5f06`  
		Last Modified: Thu, 20 Jul 2017 18:45:33 GMT  
		Size: 136.4 MB (136365927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e498933234bdaf657a8212d7394147cb11f667f2ef371fc1fb0c5529858726df`  
		Last Modified: Thu, 20 Jul 2017 18:45:12 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe6a43fe5cb7769e99e818c505ee792325e8f7909101b7061f76c607335b5d`  
		Last Modified: Thu, 20 Jul 2017 18:45:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf1559e53ac6b65e1ce17d6982901eb149a11cd2cd86ebd938608672aeb8ab9`  
		Last Modified: Thu, 20 Jul 2017 18:45:12 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ec747014f85d092d09e18607ce7722266edbf83605c5ae46ebb90fccb5fc1f`  
		Last Modified: Thu, 20 Jul 2017 18:45:12 GMT  
		Size: 105.4 KB (105396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d76ba4bfef18c6c37fe97e099150f9076e8ae416b54546e85726086a6609ce`  
		Last Modified: Thu, 20 Jul 2017 18:45:12 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
