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
