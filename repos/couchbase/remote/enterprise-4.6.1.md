## `couchbase:enterprise-4.6.1`

```console
$ docker pull couchbase@sha256:f1e19e3ba26bc261ccbec697066602dfc2f10c3a254016cac2beaa69b93cea78
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211198707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337dab68d2d1c2d350091a754af7228057dad5f2a72144abc31beda97d146ac6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:50:01 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 27 Feb 2017 22:50:30 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 14 Mar 2017 22:45:30 GMT
ARG CB_VERSION=4.6.1
# Tue, 14 Mar 2017 22:45:30 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 14 Mar 2017 22:45:31 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb
# Tue, 14 Mar 2017 22:45:31 GMT
ARG CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf
# Tue, 14 Mar 2017 22:45:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 14 Mar 2017 22:45:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 14 Mar 2017 22:46:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 14 Mar 2017 22:46:02 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 14 Mar 2017 22:46:03 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 14 Mar 2017 22:46:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 14 Mar 2017 22:46:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 14 Mar 2017 22:46:05 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 14 Mar 2017 22:46:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Mar 2017 22:46:06 GMT
CMD ["couchbase-server"]
# Tue, 14 Mar 2017 22:46:06 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 14 Mar 2017 22:46:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e92768fde677c1a472c9ad28b5d39f234deef790b706773e9e3082820316dfc`  
		Last Modified: Wed, 01 Mar 2017 22:57:41 GMT  
		Size: 11.3 MB (11257630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd3d866a339db4dfa3a5cf4e32618928db7c5c2277c07cef51442220599540b`  
		Last Modified: Tue, 14 Mar 2017 22:46:32 GMT  
		Size: 1.8 KB (1849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c601fdbf407716db061d72d080c6df857a74bc80252f36cbb4e4153c24330116`  
		Last Modified: Tue, 14 Mar 2017 22:47:06 GMT  
		Size: 134.1 MB (134068550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ce93331d78f5afb3497179e960029c0e93628423d746bd658be9f1ebd91ce3`  
		Last Modified: Tue, 14 Mar 2017 22:46:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f598f47a037a9b285e7a9739414477565aa81bbd1e079a87d0f09565f3b2f9`  
		Last Modified: Tue, 14 Mar 2017 22:46:29 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b28a7dc56304f4d99f42742fd2ff4747570b4cc04b9840ae63b98aaa9bbcb3`  
		Last Modified: Tue, 14 Mar 2017 22:46:29 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba61b5b689e46dc474677dbb74357b5db5f0e965af4e215092d98c8c1dc5578`  
		Last Modified: Tue, 14 Mar 2017 22:46:29 GMT  
		Size: 103.2 KB (103218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9c73cd20cc64788335d2d573e88865143e7d37d7f8e7306221e9ac056ac893`  
		Last Modified: Tue, 14 Mar 2017 22:46:29 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
