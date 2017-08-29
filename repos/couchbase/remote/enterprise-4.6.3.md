## `couchbase:enterprise-4.6.3`

```console
$ docker pull couchbase@sha256:0fa96d85c4a954d16b550a9d94418cbd59478cc342e2ec9384cf3e231f4f06ae
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213103421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426c9d172b9bb4a483a6fabf620036601828f2fd897fb3d798585ae7450a54ee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 21:23:06 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 10 Aug 2017 21:23:42 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 29 Aug 2017 16:25:15 GMT
ARG CB_VERSION=4.6.3
# Tue, 29 Aug 2017 16:25:15 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 29 Aug 2017 16:25:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb
# Tue, 29 Aug 2017 16:25:15 GMT
ARG CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69
# Tue, 29 Aug 2017 16:25:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 29 Aug 2017 16:25:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 29 Aug 2017 16:25:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 29 Aug 2017 16:25:39 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Tue, 29 Aug 2017 16:25:40 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 29 Aug 2017 16:25:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 29 Aug 2017 16:25:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.3-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=bc3b65c78793b819ecba87c330bd1bcc0a2edec214c597069c8eb7e34505eb69 CB_VERSION=4.6.3
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 29 Aug 2017 16:25:41 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Tue, 29 Aug 2017 16:25:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Aug 2017 16:25:42 GMT
CMD ["couchbase-server"]
# Tue, 29 Aug 2017 16:25:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 29 Aug 2017 16:25:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718fcdf7e67b0b759de1b045e22b8d0a98061cd52200f1f1190f584dc3fd31d8`  
		Last Modified: Thu, 10 Aug 2017 21:24:57 GMT  
		Size: 11.4 MB (11443057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a2401e1f7d841f742fc7262acdf842ede88743ea4d021202b4998a7dc7d072`  
		Last Modified: Tue, 29 Aug 2017 16:26:07 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ff2867fe6ffe1cc9818fe83e8ef1cd67624de667f899c6768d1865521df02e`  
		Last Modified: Tue, 29 Aug 2017 16:26:25 GMT  
		Size: 134.4 MB (134362439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef77dbf8abecebd229a1296b33afb62e130b93dcc86350d09352dc6619127b9`  
		Last Modified: Tue, 29 Aug 2017 16:26:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f720317623eb4378ed4433419756f1015169376bb2e8d76aed9cd83775dda4`  
		Last Modified: Tue, 29 Aug 2017 16:26:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdf1fc2e39c1d8c0ff371b8e56bd3d9f7453040fd267805561c5dec78b0d380`  
		Last Modified: Tue, 29 Aug 2017 16:26:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbaee3cf08d65fc885f563868a26d5c3d43a9977916816087379fdf20a0a0d0`  
		Last Modified: Tue, 29 Aug 2017 16:26:05 GMT  
		Size: 105.4 KB (105394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefe6944beb81dc51895435ec2cb5619c750fb5441c9773d43358e618ed167be`  
		Last Modified: Tue, 29 Aug 2017 16:26:05 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
