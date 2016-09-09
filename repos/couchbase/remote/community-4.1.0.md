## `couchbase:community-4.1.0`

```console
$ docker pull couchbase@sha256:815d635d61313d3e1e4e2d6789d305c75cdd25ddd54fca4c1701d1705038af66
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-4.1.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164372848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e33e95ec26cc1af6e7c0c3141a26ada994864b330c9e2fa0242d79cfa4a258`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:14:03 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 26 Aug 2016 20:15:36 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 26 Aug 2016 20:18:34 GMT
ENV CB_VERSION=4.1.0 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_4.1.0-ubuntu14.04_amd64.deb CB_SHA256=400263bd03e32b69259ec9b821bf58922030ba9e2a266e2ef4a0d4ac162188ea PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 26 Aug 2016 20:18:37 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 26 Aug 2016 20:19:10 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 26 Aug 2016 20:19:13 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 26 Aug 2016 20:19:15 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 26 Aug 2016 20:19:18 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 26 Aug 2016 20:19:21 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 26 Aug 2016 20:19:24 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 26 Aug 2016 20:19:25 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:19:26 GMT
CMD ["couchbase-server"]
# Fri, 26 Aug 2016 20:19:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 26 Aug 2016 20:19:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46618b72574a8d93d2bc99db370c220fb5554afe8cd542750e67ff517ec84eb`  
		Last Modified: Fri, 26 Aug 2016 20:17:00 GMT  
		Size: 11.3 MB (11255612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77efbc9e3d089bb9068b9825e30d5d49eae9e81d17f575acbeda615eac36d4a`  
		Last Modified: Fri, 26 Aug 2016 20:19:51 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fb68b84bdd65271c7e42591c113f9c3d42b0eb0ee74a30ef45fe7f374ed3f2`  
		Last Modified: Fri, 26 Aug 2016 20:20:18 GMT  
		Size: 87.2 MB (87241560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a5fedf87e170e81e9cfdf6bae9ac333307b1ea5b6729a9dd86cc804aac63c8`  
		Last Modified: Fri, 26 Aug 2016 20:19:47 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cfefc2dfd4245b37312eec23e073335ca6c30b39670f1d90ea307a8e86ae1f`  
		Last Modified: Fri, 26 Aug 2016 20:19:46 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079598dd619f3f5d874d3a9f3a426d503398d0c8919360c1de4d202e4d52e43b`  
		Last Modified: Fri, 26 Aug 2016 20:19:47 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d9562a0d00698bf23c0f04d5c602e086b2a04583c464eb4c315126c6346916`  
		Last Modified: Fri, 26 Aug 2016 20:19:48 GMT  
		Size: 99.1 KB (99100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d381f9144a6bd1f9abbdf2f1d3c47081868a9feb6263a7ce820a339a51619844`  
		Last Modified: Fri, 26 Aug 2016 20:19:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
