## `couchbase:latest`

```console
$ docker pull couchbase@sha256:a04e3588921ea3b8bbff1feead3bccea70c335d25acb42ab8cdc400875685bb9
```

-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211663392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6926275ee3b66cf64af7d4cee94d62aae2b89283933a62abc2652b73a373b04f`
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
# Thu, 16 Feb 2017 00:49:22 GMT
ARG CB_VERSION=4.6.0
# Thu, 16 Feb 2017 00:49:22 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 16 Feb 2017 00:49:23 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb
# Thu, 16 Feb 2017 00:49:23 GMT
ARG CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028
# Thu, 16 Feb 2017 00:49:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 16 Feb 2017 00:49:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 16 Feb 2017 00:49:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 16 Feb 2017 00:50:02 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Thu, 16 Feb 2017 00:50:02 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 16 Feb 2017 00:50:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 16 Feb 2017 00:50:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=f798fea39c6d693f1912c88c2195001373b5514f776e74599116cad392739028 CB_VERSION=4.6.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 16 Feb 2017 00:50:19 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Thu, 16 Feb 2017 00:50:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Feb 2017 00:50:20 GMT
CMD ["couchbase-server"]
# Thu, 16 Feb 2017 00:50:20 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 16 Feb 2017 00:50:21 GMT
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
	-	`sha256:d388cb7083d3e3327b115867a04a40e1e284b385b104a7ddd201395d4049d9bd`  
		Last Modified: Thu, 16 Feb 2017 00:50:42 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47800ec90de4a42d830f1be48998d125ca8629a199ab7aed4a50146c479a40a`  
		Last Modified: Thu, 16 Feb 2017 00:51:21 GMT  
		Size: 134.5 MB (134532562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e333ecf73262716dc3d4436bcc3b35e0c5e7e488deb14445ccecf28adf5da66e`  
		Last Modified: Thu, 16 Feb 2017 00:50:40 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07291fb180054c79f88d96fd01035658eedc9c6912c641b0a609fa76c62fe0bc`  
		Last Modified: Thu, 16 Feb 2017 00:50:40 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927f04411f1b9f41a609832e5873e3b7aef56098e3859b2c7805b9c8f367153`  
		Last Modified: Thu, 16 Feb 2017 00:50:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7f6ce74683ba213b9f5bc2950556773104fde2c6f0c4b0cb47a6ce8012becd`  
		Last Modified: Thu, 16 Feb 2017 00:50:40 GMT  
		Size: 103.2 KB (103224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e204879a4a00debb476545557f7fe95da362be0a6705f39d5ad98bf46275fd7`  
		Last Modified: Thu, 16 Feb 2017 00:50:40 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
