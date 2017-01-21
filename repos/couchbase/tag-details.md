<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:latest`](#couchbaselatest)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:4.5.1`](#couchbase451)
-	[`couchbase:enterprise-4.5.1`](#couchbaseenterprise-451)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.0`](#couchbasecommunity-450)
-	[`couchbase:3.1.6`](#couchbase316)
-	[`couchbase:enterprise-3.1.6`](#couchbaseenterprise-316)
-	[`couchbase:community-3.1.3`](#couchbasecommunity-313)

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:fd2a215857f155ad63fafa895a0c1fe5621d361cbcb66d3d8810101a12cc501a
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e0c4b44a1b6b410e96b7453178caf2a0ab3b4af04852df039f19c8ee5b522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:46 GMT
ARG CB_VERSION=4.5.1
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Fri, 20 Jan 2017 23:59:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 21 Jan 2017 00:00:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 21 Jan 2017 00:00:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 21 Jan 2017 00:00:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 21 Jan 2017 00:00:20 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 21 Jan 2017 00:00:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jan 2017 00:00:21 GMT
CMD ["couchbase-server"]
# Sat, 21 Jan 2017 00:00:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 21 Jan 2017 00:00:22 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d3150f056e13e1bbf90e05c82f627bffc34bee540565cd86227f2bd0f84e16`  
		Last Modified: Sat, 21 Jan 2017 00:04:48 GMT  
		Size: 1.9 KB (1850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a6ba7ab1912f8092945c246f8159144d43aef7fa442379ad6137b70c1b1d9`  
		Last Modified: Sat, 21 Jan 2017 00:05:24 GMT  
		Size: 131.6 MB (131579292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0403029d3be713b7d0acd8d41dbf3432c05ca2db8dec68260b6a287292f1de`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c835019e246f4601edc898b7043ce25b1c7fce28ec426a19010f6d38f3415d9b`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0269e8f3b8c4eca20b4d3c699c1469ee42ae23ba8253c0a1e32ebb8e830ad6a4`  
		Last Modified: Sat, 21 Jan 2017 00:04:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a32c536fdd38b567814b69233045f1589fbd671682a5bb1a945f81d0d841fb`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 103.2 KB (103217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9deaea6bcf9e2fedcfcf6f05d1a2ae89b690404c5d705c5357debc0a8bdc3`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:fd2a215857f155ad63fafa895a0c1fe5621d361cbcb66d3d8810101a12cc501a
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e0c4b44a1b6b410e96b7453178caf2a0ab3b4af04852df039f19c8ee5b522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:46 GMT
ARG CB_VERSION=4.5.1
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Fri, 20 Jan 2017 23:59:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 21 Jan 2017 00:00:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 21 Jan 2017 00:00:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 21 Jan 2017 00:00:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 21 Jan 2017 00:00:20 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 21 Jan 2017 00:00:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jan 2017 00:00:21 GMT
CMD ["couchbase-server"]
# Sat, 21 Jan 2017 00:00:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 21 Jan 2017 00:00:22 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d3150f056e13e1bbf90e05c82f627bffc34bee540565cd86227f2bd0f84e16`  
		Last Modified: Sat, 21 Jan 2017 00:04:48 GMT  
		Size: 1.9 KB (1850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a6ba7ab1912f8092945c246f8159144d43aef7fa442379ad6137b70c1b1d9`  
		Last Modified: Sat, 21 Jan 2017 00:05:24 GMT  
		Size: 131.6 MB (131579292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0403029d3be713b7d0acd8d41dbf3432c05ca2db8dec68260b6a287292f1de`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c835019e246f4601edc898b7043ce25b1c7fce28ec426a19010f6d38f3415d9b`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0269e8f3b8c4eca20b4d3c699c1469ee42ae23ba8253c0a1e32ebb8e830ad6a4`  
		Last Modified: Sat, 21 Jan 2017 00:04:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a32c536fdd38b567814b69233045f1589fbd671682a5bb1a945f81d0d841fb`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 103.2 KB (103217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9deaea6bcf9e2fedcfcf6f05d1a2ae89b690404c5d705c5357debc0a8bdc3`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:4.5.1`

```console
$ docker pull couchbase@sha256:fd2a215857f155ad63fafa895a0c1fe5621d361cbcb66d3d8810101a12cc501a
```

-	Platforms:
	-	linux; amd64

### `couchbase:4.5.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e0c4b44a1b6b410e96b7453178caf2a0ab3b4af04852df039f19c8ee5b522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:46 GMT
ARG CB_VERSION=4.5.1
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Fri, 20 Jan 2017 23:59:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 21 Jan 2017 00:00:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 21 Jan 2017 00:00:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 21 Jan 2017 00:00:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 21 Jan 2017 00:00:20 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 21 Jan 2017 00:00:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jan 2017 00:00:21 GMT
CMD ["couchbase-server"]
# Sat, 21 Jan 2017 00:00:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 21 Jan 2017 00:00:22 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d3150f056e13e1bbf90e05c82f627bffc34bee540565cd86227f2bd0f84e16`  
		Last Modified: Sat, 21 Jan 2017 00:04:48 GMT  
		Size: 1.9 KB (1850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a6ba7ab1912f8092945c246f8159144d43aef7fa442379ad6137b70c1b1d9`  
		Last Modified: Sat, 21 Jan 2017 00:05:24 GMT  
		Size: 131.6 MB (131579292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0403029d3be713b7d0acd8d41dbf3432c05ca2db8dec68260b6a287292f1de`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c835019e246f4601edc898b7043ce25b1c7fce28ec426a19010f6d38f3415d9b`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0269e8f3b8c4eca20b4d3c699c1469ee42ae23ba8253c0a1e32ebb8e830ad6a4`  
		Last Modified: Sat, 21 Jan 2017 00:04:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a32c536fdd38b567814b69233045f1589fbd671682a5bb1a945f81d0d841fb`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 103.2 KB (103217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9deaea6bcf9e2fedcfcf6f05d1a2ae89b690404c5d705c5357debc0a8bdc3`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-4.5.1`

```console
$ docker pull couchbase@sha256:fd2a215857f155ad63fafa895a0c1fe5621d361cbcb66d3d8810101a12cc501a
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.5.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208710100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e0c4b44a1b6b410e96b7453178caf2a0ab3b4af04852df039f19c8ee5b522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:46 GMT
ARG CB_VERSION=4.5.1
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:47 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Fri, 20 Jan 2017 23:59:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 21 Jan 2017 00:00:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 21 Jan 2017 00:00:17 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 21 Jan 2017 00:00:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 21 Jan 2017 00:00:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 21 Jan 2017 00:00:20 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 21 Jan 2017 00:00:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jan 2017 00:00:21 GMT
CMD ["couchbase-server"]
# Sat, 21 Jan 2017 00:00:22 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 21 Jan 2017 00:00:22 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d3150f056e13e1bbf90e05c82f627bffc34bee540565cd86227f2bd0f84e16`  
		Last Modified: Sat, 21 Jan 2017 00:04:48 GMT  
		Size: 1.9 KB (1850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664a6ba7ab1912f8092945c246f8159144d43aef7fa442379ad6137b70c1b1d9`  
		Last Modified: Sat, 21 Jan 2017 00:05:24 GMT  
		Size: 131.6 MB (131579292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0403029d3be713b7d0acd8d41dbf3432c05ca2db8dec68260b6a287292f1de`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c835019e246f4601edc898b7043ce25b1c7fce28ec426a19010f6d38f3415d9b`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0269e8f3b8c4eca20b4d3c699c1469ee42ae23ba8253c0a1e32ebb8e830ad6a4`  
		Last Modified: Sat, 21 Jan 2017 00:04:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a32c536fdd38b567814b69233045f1589fbd671682a5bb1a945f81d0d841fb`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 103.2 KB (103217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d9deaea6bcf9e2fedcfcf6f05d1a2ae89b690404c5d705c5357debc0a8bdc3`  
		Last Modified: Sat, 21 Jan 2017 00:04:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:38d39458f0920580fc5806eba25cfd7b976e11c90f12b61112a156b8d9928b78
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205598445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e565f2314c6dacf1343d2697efd4cdb16da3dc2ef63044fb1b86fc2a8b75af59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_VERSION=4.5.0
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Fri, 20 Jan 2017 23:59:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 20 Jan 2017 23:59:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 20 Jan 2017 23:59:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 20 Jan 2017 23:59:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 20 Jan 2017 23:59:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 20 Jan 2017 23:59:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 20 Jan 2017 23:59:43 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 20 Jan 2017 23:59:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jan 2017 23:59:44 GMT
CMD ["couchbase-server"]
# Fri, 20 Jan 2017 23:59:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 20 Jan 2017 23:59:45 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a0de19f600b98a37d2a7dfee9425f9249d599636b04d64dee78783e2d9c35a`  
		Last Modified: Sat, 21 Jan 2017 00:02:17 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7dee3217bb673b5731c380d4b26adc94f27c56e81cc16811fc3dc2cc124ab6`  
		Last Modified: Sat, 21 Jan 2017 00:02:51 GMT  
		Size: 128.5 MB (128471746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858e260bc891b5b4592126a4f69ffb0a7a64872fa5df027c54e59dcdfd94a220`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4487f9634f6b5699a84f79d477c9b1970b34164858b753cd725e6158e7ae626`  
		Last Modified: Sat, 21 Jan 2017 00:02:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999e72e79bfead5c4b2076c4d9456e9a0d4eb10f22355984a32c1dfb31b05864`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712ad71eb4c4563d667be86151042ad2d1aff8280f23dda89b790c7c3a42e054`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b23b4d95a98e752a9b910bb7a1a7ccffe5e6d5c635640057dffe321b93f80a`  
		Last Modified: Sat, 21 Jan 2017 00:02:14 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.0`

```console
$ docker pull couchbase@sha256:38d39458f0920580fc5806eba25cfd7b976e11c90f12b61112a156b8d9928b78
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205598445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e565f2314c6dacf1343d2697efd4cdb16da3dc2ef63044fb1b86fc2a8b75af59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:58:47 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 20 Jan 2017 23:59:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_VERSION=4.5.0
# Fri, 20 Jan 2017 23:59:09 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Fri, 20 Jan 2017 23:59:10 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Fri, 20 Jan 2017 23:59:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 20 Jan 2017 23:59:12 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 20 Jan 2017 23:59:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 20 Jan 2017 23:59:40 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Fri, 20 Jan 2017 23:59:41 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Fri, 20 Jan 2017 23:59:42 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 20 Jan 2017 23:59:43 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 20 Jan 2017 23:59:43 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Fri, 20 Jan 2017 23:59:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jan 2017 23:59:44 GMT
CMD ["couchbase-server"]
# Fri, 20 Jan 2017 23:59:45 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 20 Jan 2017 23:59:45 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2d8c867794257c83db8420c62a7bbef18b99d70ddd020dd152496656efa749`  
		Last Modified: Sat, 21 Jan 2017 00:02:23 GMT  
		Size: 11.3 MB (11258062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a0de19f600b98a37d2a7dfee9425f9249d599636b04d64dee78783e2d9c35a`  
		Last Modified: Sat, 21 Jan 2017 00:02:17 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7dee3217bb673b5731c380d4b26adc94f27c56e81cc16811fc3dc2cc124ab6`  
		Last Modified: Sat, 21 Jan 2017 00:02:51 GMT  
		Size: 128.5 MB (128471746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858e260bc891b5b4592126a4f69ffb0a7a64872fa5df027c54e59dcdfd94a220`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4487f9634f6b5699a84f79d477c9b1970b34164858b753cd725e6158e7ae626`  
		Last Modified: Sat, 21 Jan 2017 00:02:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999e72e79bfead5c4b2076c4d9456e9a0d4eb10f22355984a32c1dfb31b05864`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712ad71eb4c4563d667be86151042ad2d1aff8280f23dda89b790c7c3a42e054`  
		Last Modified: Sat, 21 Jan 2017 00:02:15 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b23b4d95a98e752a9b910bb7a1a7ccffe5e6d5c635640057dffe321b93f80a`  
		Last Modified: Sat, 21 Jan 2017 00:02:14 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:3.1.6`

```console
$ docker pull couchbase@sha256:66bd3e55e379f62624a847985962e3c478a8393f5d2781003426e12c15fa6b70
```

-	Platforms:
	-	linux; amd64

### `couchbase:3.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58121d6a7c61bbd4a0bf90187039eda604001ef8267c3a6f387c2d84904606dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:08:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 15 Dec 2016 18:09:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 15 Dec 2016 18:09:12 GMT
ARG CB_VERSION=3.1.6
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Thu, 15 Dec 2016 18:09:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 15 Dec 2016 18:09:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 15 Dec 2016 18:09:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 15 Dec 2016 18:09:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 15 Dec 2016 18:09:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 15 Dec 2016 18:09:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 15 Dec 2016 18:09:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 15 Dec 2016 18:09:51 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 15 Dec 2016 18:09:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Dec 2016 18:09:52 GMT
CMD ["couchbase-server"]
# Thu, 15 Dec 2016 18:09:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 15 Dec 2016 18:09:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7466fcf533df584f56795fb53ca2c3dbf72a9810709689a8d12b7198119a3337`  
		Last Modified: Mon, 19 Dec 2016 18:18:58 GMT  
		Size: 9.5 MB (9471719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40180231570fc795e7ef3e0bb05dc4c122d6b8e23d3c5bd79ad4884a0f49034c`  
		Last Modified: Mon, 19 Dec 2016 18:18:50 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a0994663dbd2e4415983f2370818e916f2486e220990d0d778946a7bbea8f0`  
		Last Modified: Mon, 19 Dec 2016 18:19:54 GMT  
		Size: 213.1 MB (213063923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02825bc3d11965f8ca3d18f747759be9e216b2f9ad4515c9d8ded2ced37676aa`  
		Last Modified: Mon, 19 Dec 2016 18:18:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9953da2395bc7f18d3520162e2f3fafc2a0f11d6c217f8ea8112d7953d60c74f`  
		Last Modified: Mon, 19 Dec 2016 18:18:47 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5de1250673afeb55913fc8eb94b22a72415fadf24c8414ec11aa23897e6e427`  
		Last Modified: Mon, 19 Dec 2016 18:18:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1396a837abe9e28d1ad85337cb4ffe09c092495a563898c5cbcef73195f5a487`  
		Last Modified: Mon, 19 Dec 2016 18:18:51 GMT  
		Size: 10.3 MB (10275430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bab6ca43cec49d562fe47f82a4afa56645263456c99894b912d0f07b12b09cd`  
		Last Modified: Mon, 19 Dec 2016 18:18:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-3.1.6`

```console
$ docker pull couchbase@sha256:66bd3e55e379f62624a847985962e3c478a8393f5d2781003426e12c15fa6b70
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-3.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271952373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58121d6a7c61bbd4a0bf90187039eda604001ef8267c3a6f387c2d84904606dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:08:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 15 Dec 2016 18:09:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 15 Dec 2016 18:09:12 GMT
ARG CB_VERSION=3.1.6
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb
# Thu, 15 Dec 2016 18:09:13 GMT
ARG CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b
# Thu, 15 Dec 2016 18:09:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 15 Dec 2016 18:09:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 15 Dec 2016 18:09:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 15 Dec 2016 18:09:48 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 15 Dec 2016 18:09:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 15 Dec 2016 18:09:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 15 Dec 2016 18:09:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_3.1.6-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=b13964639f2effcf7026834f0c023b43b22f44d12d7567712b5760bd1829ad6b CB_VERSION=3.1.6
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 15 Dec 2016 18:09:51 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 15 Dec 2016 18:09:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Dec 2016 18:09:52 GMT
CMD ["couchbase-server"]
# Thu, 15 Dec 2016 18:09:53 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 15 Dec 2016 18:09:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7466fcf533df584f56795fb53ca2c3dbf72a9810709689a8d12b7198119a3337`  
		Last Modified: Mon, 19 Dec 2016 18:18:58 GMT  
		Size: 9.5 MB (9471719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40180231570fc795e7ef3e0bb05dc4c122d6b8e23d3c5bd79ad4884a0f49034c`  
		Last Modified: Mon, 19 Dec 2016 18:18:50 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a0994663dbd2e4415983f2370818e916f2486e220990d0d778946a7bbea8f0`  
		Last Modified: Mon, 19 Dec 2016 18:19:54 GMT  
		Size: 213.1 MB (213063923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02825bc3d11965f8ca3d18f747759be9e216b2f9ad4515c9d8ded2ced37676aa`  
		Last Modified: Mon, 19 Dec 2016 18:18:48 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9953da2395bc7f18d3520162e2f3fafc2a0f11d6c217f8ea8112d7953d60c74f`  
		Last Modified: Mon, 19 Dec 2016 18:18:47 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5de1250673afeb55913fc8eb94b22a72415fadf24c8414ec11aa23897e6e427`  
		Last Modified: Mon, 19 Dec 2016 18:18:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1396a837abe9e28d1ad85337cb4ffe09c092495a563898c5cbcef73195f5a487`  
		Last Modified: Mon, 19 Dec 2016 18:18:51 GMT  
		Size: 10.3 MB (10275430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bab6ca43cec49d562fe47f82a4afa56645263456c99894b912d0f07b12b09cd`  
		Last Modified: Mon, 19 Dec 2016 18:18:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:5b2bc254b46299516ae503015de8315d64622db3927a5ca282551467392b3e19
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272040632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c6ecb41c2f2f6bb25a87b7ca48a047e9cbab059dfee9176686b03f92b3e337`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:08:51 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 15 Dec 2016 18:09:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 15 Dec 2016 18:11:20 GMT
ARG CB_VERSION=3.1.3
# Thu, 15 Dec 2016 18:11:20 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 15 Dec 2016 18:11:20 GMT
ARG CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb
# Thu, 15 Dec 2016 18:11:21 GMT
ARG CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41
# Thu, 15 Dec 2016 18:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 15 Dec 2016 18:11:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 15 Dec 2016 18:11:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 15 Dec 2016 18:11:58 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 15 Dec 2016 18:11:59 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 15 Dec 2016 18:11:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 15 Dec 2016 18:12:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 CB_VERSION=3.1.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 15 Dec 2016 18:12:02 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 15 Dec 2016 18:12:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Dec 2016 18:12:03 GMT
CMD ["couchbase-server"]
# Thu, 15 Dec 2016 18:12:03 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 15 Dec 2016 18:12:03 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7466fcf533df584f56795fb53ca2c3dbf72a9810709689a8d12b7198119a3337`  
		Last Modified: Mon, 19 Dec 2016 18:18:58 GMT  
		Size: 9.5 MB (9471719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df93c3dcdcdafb721486f16d3950fb83d6e474b1410ead4235141e251da7f54f`  
		Last Modified: Mon, 19 Dec 2016 18:22:08 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b5b680fb3b0f4ae9aa35ceeceec4f9c639d8821190cceaff34d4af73a53ec`  
		Last Modified: Mon, 19 Dec 2016 18:23:13 GMT  
		Size: 213.2 MB (213152201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13309c1e8fb7ad7abd105bf7ac1eb918bd2b3facb7c4956ace61860b9d55253d`  
		Last Modified: Mon, 19 Dec 2016 18:22:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7527def510394e920d6a736abc6eb22bab53e41c1add391f8ad7d387e4c193`  
		Last Modified: Mon, 19 Dec 2016 18:22:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b493ac5421dbec97ce57beb6f53e5d16b89b1fbbcd1d132a9ce7f4d7ffe79f`  
		Last Modified: Mon, 19 Dec 2016 18:22:07 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db81173365848ed94dfaed233e15d2194f1891b15e721f1411ed268fbf061ef6`  
		Last Modified: Mon, 19 Dec 2016 18:22:10 GMT  
		Size: 10.3 MB (10275413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631eae51645b4cec0be03599e6acfa5da872b1c3692d5a1e883fcbcfe2bfc569`  
		Last Modified: Mon, 19 Dec 2016 18:22:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
