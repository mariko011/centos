## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:8591d94b590cb963226522e91f1b5af1417580cd0e283567f310c5adef6f0e07
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272059393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d326bbda57d15d21a03db943910b82a9ecc38b1cae2a8f2b149829f35dfd5bfb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:18:10 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 30 Aug 2016 18:18:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 30 Aug 2016 18:19:07 GMT
ENV CB_VERSION=3.1.3 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 30 Aug 2016 18:19:08 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 30 Aug 2016 18:19:48 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 30 Aug 2016 18:19:51 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run 
# Tue, 30 Aug 2016 18:19:52 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 30 Aug 2016 18:19:53 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 30 Aug 2016 18:19:54 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 30 Aug 2016 18:19:55 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in / 
# Tue, 30 Aug 2016 18:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 18:19:55 GMT
CMD ["couchbase-server"]
# Tue, 30 Aug 2016 18:19:55 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 30 Aug 2016 18:19:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38854bb595ed3edd84a3636a43dbe8f3c6450d360f767ce31a52b7e1ac060f83`  
		Last Modified: Mon, 19 Sep 2016 17:14:27 GMT  
		Size: 9.5 MB (9470261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed3585641fce9d64f6cf4071bef26a300cfac3336d9e2d062a4b521f9e6fe1c`  
		Last Modified: Mon, 19 Sep 2016 17:15:47 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a025672e11dfa17112591ac9f8479852deab3a5830d6bb8c3d392db677f284`  
		Last Modified: Mon, 19 Sep 2016 17:16:49 GMT  
		Size: 213.2 MB (213169902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa3c91f7f4b683a9df1478dbb13679bf5b83e410b1cc6bee9a00c2f4c2677e`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df74b9d0fd1d4646c2bc42dcb717c3ebc51f1ffce6c03d4b16c655fc043559a1`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d856d242423c93bb0ecdbb72cbfd5d908ebd340f08c78e9ce1c182dd2faf72`  
		Last Modified: Mon, 19 Sep 2016 17:15:44 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cfb45fe4f5362563129a50c098453c0201a2d3e88e8948b0aa1a3976f8e6b1`  
		Last Modified: Mon, 19 Sep 2016 17:15:49 GMT  
		Size: 10.3 MB (10275403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5927bf243c887f4355001b9f007575fc2e4f24848f785828303a6a7097d5bc`  
		Last Modified: Mon, 19 Sep 2016 17:15:46 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
