## `couchbase:community-3.1.3`

```console
$ docker pull couchbase@sha256:3ff21906b54c7dece9d133857698238f7a6b43271f723e36fba6ef50b51c2d31
```

-	Platforms:
	-	linux; amd64

### `couchbase:community-3.1.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272041565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccf7b1565a9793a820f8b4cc87cb997032906cafd7c9f670162e4646e8c9384`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:04 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in /
# Fri, 26 Aug 2016 18:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:21 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:06:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 26 Aug 2016 20:07:15 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 26 Aug 2016 20:10:48 GMT
ENV CB_VERSION=3.1.3 CB_RELEASE_URL=http://packages.couchbase.com/releases CB_PACKAGE=couchbase-server-community_3.1.3-ubuntu12.04_amd64.deb CB_SHA256=dc919f78a74ae1f627b9bee26e3da70a33ceb1b3fd3259f2ed85b0754e6fcd41 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 26 Aug 2016 20:10:51 GMT
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 26 Aug 2016 20:11:45 GMT
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 26 Aug 2016 20:11:47 GMT
COPY file:7a3bf353a4f0d8eed060426fec4bacdf779a522d4c631430af31c172eb79f95b in /etc/service/couchbase-server/run
# Fri, 26 Aug 2016 20:11:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/
# Fri, 26 Aug 2016 20:11:52 GMT
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 26 Aug 2016 20:11:56 GMT
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 26 Aug 2016 20:11:58 GMT
COPY file:2e05ad6c8605276336133e65ef3a65ce79eaae1794ede978d3de602732e217ac in /
# Fri, 26 Aug 2016 20:11:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 26 Aug 2016 20:12:01 GMT
CMD ["couchbase-server"]
# Fri, 26 Aug 2016 20:12:02 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Fri, 26 Aug 2016 20:12:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdbc48ff694c1f28e349a0df1e8a0680b4ca2349f8a7ffb92054021ba855049`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 57.9 KB (57934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b89518fcb84072fbf348d79632b0218ebc633499af9d28ad8ef22ef64d8664`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f10461f800446cd4fd61cecb58472338cb47443ab6e3b71e9aea48dc1c667`  
		Last Modified: Fri, 26 Aug 2016 18:52:08 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f76cfd9cb68c9ad04dfa12be2599e74677feab8e7f99061e153516dddd14d58`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a818db67f2df6ae294b9afe6a04e71133ac7a89356670dd185c8d336130d67f7`  
		Last Modified: Fri, 26 Aug 2016 20:09:01 GMT  
		Size: 9.5 MB (9470598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dddf866981fb08688cd7423c3b6020d57d943231ea80fcb27018fbb44c15771`  
		Last Modified: Fri, 26 Aug 2016 20:12:23 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac451fe86eb3cd45e9e9860349cf7cc33c833fb788b7099f25f4cd42c3ff61f`  
		Last Modified: Fri, 26 Aug 2016 20:13:50 GMT  
		Size: 213.2 MB (213151759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110f4685db5c9136c1725503ad7fab60531915ead8e19b8dc659c46af786610f`  
		Last Modified: Fri, 26 Aug 2016 20:12:20 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa435270b0e0d7531cfecd56d93fa2434f2ef17eb8fa1e9e1321c2b899d44a87`  
		Last Modified: Fri, 26 Aug 2016 20:12:20 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077d83f49cd20e3c37ee28e6107522676a9f7af70127cf36402e2b09321f1010`  
		Last Modified: Fri, 26 Aug 2016 20:12:20 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1183a6825288a7404818933fd94a8a24cb0f2c1311649a0ea917b46bc1c40e6d`  
		Last Modified: Fri, 26 Aug 2016 20:12:26 GMT  
		Size: 10.3 MB (10275394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d9674d245a5ca18b5014ea90707a69bba946a1ad070b84a912d3c37effcf22`  
		Last Modified: Fri, 26 Aug 2016 20:12:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
