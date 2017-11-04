## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:c7674b3229ad989c268347ec44735ff30e4fda36ea601018fe9f660904e1e5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:0df21f2f04c93c52c434508e0eab56489cf3da3c034f133524c45daf86bbc029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211020147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c81fc4068dd69e80f700afa063bc2082d56c48b7cd0801c895976082ca12c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 11:28:16 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 04 Nov 2017 11:28:57 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_VERSION=5.0.0
# Sat, 04 Nov 2017 11:28:58 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb
# Sat, 04 Nov 2017 11:30:30 GMT
ARG CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49
# Sat, 04 Nov 2017 11:30:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 04 Nov 2017 11:30:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 04 Nov 2017 11:30:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 04 Nov 2017 11:30:55 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Sat, 04 Nov 2017 11:30:56 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 04 Nov 2017 11:30:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 04 Nov 2017 11:30:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2332e1ecf61c406509b0ddd60b86312ba3874fa7af026986965f782ef0241c49 CB_VERSION=5.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 04 Nov 2017 11:30:57 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Sat, 04 Nov 2017 11:30:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 11:30:58 GMT
CMD ["couchbase-server"]
# Sat, 04 Nov 2017 11:30:58 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 04 Nov 2017 11:30:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9a40e5ef0ec73c5a4b3fb75e596a223d103c2275113d81e023ec3e4856e24`  
		Last Modified: Sat, 04 Nov 2017 11:31:54 GMT  
		Size: 11.4 MB (11392654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4d23edbf2499119c9352f7027725b4361e1cf83eb48274130bad8d28f184c0`  
		Last Modified: Sat, 04 Nov 2017 11:34:25 GMT  
		Size: 1.9 KB (1910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6beb87655ff42f79acb575eb3700fda18552f8856ae59d55fdc106cfe2e47a98`  
		Last Modified: Sat, 04 Nov 2017 11:34:42 GMT  
		Size: 132.3 MB (132330154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa8080e4f153c20b6c80d2222986bf3e57f006517c1474dfd717970aab771c`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289809179ef4f7decf34d0b43d7af6d92f6b5b7bc4b10ea57eb1b1c402479b73`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809b15aa5bd564ac6c10fd071749ea087a074b2cb25dc5a209fe37755cd2bdb`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966a90e309c391c9cf87fac6442719fa99c5af22c105caacf5b0a817270e29df`  
		Last Modified: Sat, 04 Nov 2017 11:34:22 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182cf8094e9cbc58998d40e4ca3a53f180b08c8eb580ceeeb7bc8af91f13574`  
		Last Modified: Sat, 04 Nov 2017 11:34:21 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
