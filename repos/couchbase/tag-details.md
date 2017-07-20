<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.6.2`](#couchbase462)
-	[`couchbase:enterprise-4.6.2`](#couchbaseenterprise-462)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:393085e0d58c0c3cdc373fa83ddb5e92d9d6a670327026e31e33a8f4ebc40ba9
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

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

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:393085e0d58c0c3cdc373fa83ddb5e92d9d6a670327026e31e33a8f4ebc40ba9
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

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

## `couchbase:4.6.2`

```console
$ docker pull couchbase@sha256:393085e0d58c0c3cdc373fa83ddb5e92d9d6a670327026e31e33a8f4ebc40ba9
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.6.2` - linux; amd64

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

## `couchbase:community`

```console
$ docker pull couchbase@sha256:ac018ab29d9297a518ad66e9ab361bc6e21347ba4bc403e3d8b7dcae73e814b3
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

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

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:338e4cbdf523d82346c169f98b8a0ed3876cc7cc81d8c5b905f08f0e07d62ed9
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276902127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173156dc5f0322ef0c537200f4934f552d074029bce67da802e8fad5c0ad601`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_VERSION=3.1.6
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:15:45 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:15:46 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 12 Apr 2017 22:15:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:15:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:16:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:16:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:16:33 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:16:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:16:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:16:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:16:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:16:52 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:16:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:17:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab1598a074bed37a75445ac89b9040d777565161c4b81d6717003558cb1a1e`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419aad044935734e16ddd5bfb0639d966093502b98559ed106f0ff032132db09`  
		Last Modified: Tue, 25 Apr 2017 16:58:42 GMT  
		Size: 217.7 MB (217696375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4776f103cafa89e168a9781175c8fc580283cee6ebed7b9aca0192a38ebd2c`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3f4ecdcfc374b2f0781514d86e7df2550ed4154d267e46ed1fab48cc93b443`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71c3c39fae91e9a4c6d071a7722769c4d14da0a8834fff32d2137668988d06`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd199b44e151705156dd25968f916fc5adab07e0fda528704c855c1012b0a2ec`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 10.5 MB (10467870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf342791d4b9b332c4517b2a68aca8aa4d2ada82aaba05cdfe3369b32d4f311`  
		Last Modified: Tue, 25 Apr 2017 16:58:03 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:338e4cbdf523d82346c169f98b8a0ed3876cc7cc81d8c5b905f08f0e07d62ed9
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276902127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173156dc5f0322ef0c537200f4934f552d074029bce67da802e8fad5c0ad601`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_VERSION=3.1.6
# Wed, 12 Apr 2017 22:15:44 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:15:45 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:15:46 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Wed, 12 Apr 2017 22:15:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:15:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:16:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:16:32 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:16:33 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:16:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:16:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:16:50 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:16:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:16:52 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:16:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:17:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab1598a074bed37a75445ac89b9040d777565161c4b81d6717003558cb1a1e`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419aad044935734e16ddd5bfb0639d966093502b98559ed106f0ff032132db09`  
		Last Modified: Tue, 25 Apr 2017 16:58:42 GMT  
		Size: 217.7 MB (217696375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4776f103cafa89e168a9781175c8fc580283cee6ebed7b9aca0192a38ebd2c`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3f4ecdcfc374b2f0781514d86e7df2550ed4154d267e46ed1fab48cc93b443`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d71c3c39fae91e9a4c6d071a7722769c4d14da0a8834fff32d2137668988d06`  
		Last Modified: Tue, 25 Apr 2017 16:58:02 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd199b44e151705156dd25968f916fc5adab07e0fda528704c855c1012b0a2ec`  
		Last Modified: Tue, 25 Apr 2017 16:58:05 GMT  
		Size: 10.5 MB (10467870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf342791d4b9b332c4517b2a68aca8aa4d2ada82aaba05cdfe3369b32d4f311`  
		Last Modified: Tue, 25 Apr 2017 16:58:03 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:3d7ea5958afb4ae0c136794d018260fabfad651cbefb6bcb05709cb7ea8e7250
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276985894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d767b62b8a14fc808a059d558e99ba0b63aca3281acf7225053abb6b0b273cb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 22:15:14 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 12 Apr 2017 22:15:43 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 12 Apr 2017 22:19:47 GMT
ARG CB_VERSION=3.1.3
# Wed, 12 Apr 2017 22:19:50 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 12 Apr 2017 22:19:50 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Wed, 12 Apr 2017 22:19:51 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Wed, 12 Apr 2017 22:19:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 12 Apr 2017 22:19:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 12 Apr 2017 22:20:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 12 Apr 2017 22:21:00 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 12 Apr 2017 22:21:00 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 12 Apr 2017 22:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 12 Apr 2017 22:21:03 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 12 Apr 2017 22:21:04 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 12 Apr 2017 22:21:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 22:21:06 GMT
CMD ["couchbase-server"]
# Wed, 12 Apr 2017 22:21:07 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 12 Apr 2017 22:21:08 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4feb9c7234f0031242868ddd57904b27f5b19ca8f30ef9ea7985146219fdaa`  
		Last Modified: Tue, 25 Apr 2017 16:58:09 GMT  
		Size: 9.6 MB (9578937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d32081d3d78937a2d77db99551f829e52ce383f3846f8e453a8d40b81fa21a`  
		Last Modified: Tue, 25 Apr 2017 17:00:59 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09217d3e4a236b8b5f8fd72599fbda03ced1334cb751921c2201ff44e24eb3f0`  
		Last Modified: Tue, 25 Apr 2017 17:01:40 GMT  
		Size: 217.8 MB (217780158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d16271192b3fd32aa18ae5094682577f107b7c4b5288a72db2f64f9b2da95c`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8349780dcd4444ae25cceecdc9dc4ee99b56f2e204718e5f81de76c0b78ee85c`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f24ed2fe1325315a9ce4d7025a6bb606322c91992be5446ef40a63cc0f616b`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6453a3c1fbf7168f0c7ca05515beaa437a84d666f00ee1485751d381b7cf49c1`  
		Last Modified: Tue, 25 Apr 2017 17:00:59 GMT  
		Size: 10.5 MB (10467868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18b0bf44aa595ceb32054ef698f7c71646fdab61ff8bb6c140e5ec61817f5ba`  
		Last Modified: Tue, 25 Apr 2017 17:00:57 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
