## `couchbase:community`

```console
$ docker pull couchbase@sha256:d56cdc76187300e59db46147521b2b6f7261a154b8772c0db5a017068d5f082c
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205594604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ebbceca09e82485e5c41afd107514a5105049693a5c11f7265a80f14838a82`
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
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_VERSION=4.5.0
# Mon, 27 Feb 2017 22:51:04 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb
# Mon, 27 Feb 2017 22:51:05 GMT
ARG CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633
# Mon, 27 Feb 2017 22:51:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 27 Feb 2017 22:51:06 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 27 Feb 2017 22:51:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 27 Feb 2017 22:51:27 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 27 Feb 2017 22:51:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 27 Feb 2017 22:51:29 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.0-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=7682b2c90717ba790b729341e32ce5a43f7eacb5279f48f47aae165c0ec3a633 CB_VERSION=4.5.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 27 Feb 2017 22:51:30 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 27 Feb 2017 22:51:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:51:30 GMT
CMD ["couchbase-server"]
# Mon, 27 Feb 2017 22:51:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 27 Feb 2017 22:51:31 GMT
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
	-	`sha256:1a02a61442fd12c09c5fab7f6812b7034cdf360d886cf542eeac037b54d5807d`  
		Last Modified: Wed, 01 Mar 2017 22:57:36 GMT  
		Size: 1.9 KB (1856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6cb2a00aca2b39450f8c636fb50d286a1936a81841d40f1cf628e716efc97d`  
		Last Modified: Wed, 01 Mar 2017 22:58:11 GMT  
		Size: 128.5 MB (128468552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be43f80b348487a83418a874f7669848b797bc0a3437d5aeb388824e30592d3c`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076cadfbcbfd6ca475b9fedff094009e79de08a72fff2aab7869e392200abfd0`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2087b03b9a50bbff986262a66e1ceb96bde0e263888f3934a5fa09ea11a7f9a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e033b7e3bf430ebde60bea28dd47e342ae747d9d8d25ebc342044d2e0c1f63`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea2af4fd0fecaa1cde6e43920877366fc1489e8585e9fd575286f0a6beba8a`  
		Last Modified: Wed, 01 Mar 2017 22:57:34 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
