## `couchbase:community`

```console
$ docker pull couchbase@sha256:0115853cce90f8cfc075488b2a8cec4f5b866f7586309a8a91a88bd4349e1504
```

-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164375084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced7adebcd387054964adff884c98ebf71ea4afc22bf94f895f639b3f1b1a24c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Wed, 16 Nov 2016 23:17:24 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 16 Nov 2016 23:18:02 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_VERSION=4.1.1
# Wed, 16 Nov 2016 23:18:03 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:18:04 GMT
ARG CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883
# Wed, 16 Nov 2016 23:18:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:18:05 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:18:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:18:21 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:18:22 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:18:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:18:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.1.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=237b530643bb6c7bc2fd36363a235957b4f6ac9558e50ba5b1dad094b8a50883 CB_VERSION=4.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:18:25 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:18:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:18:26 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:18:26 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:18:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c17b43dee3ab884437142118870c905dfdc74cf87deb8bfa5a6e07942e091a`  
		Last Modified: Wed, 16 Nov 2016 23:25:46 GMT  
		Size: 11.3 MB (11255126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b77fcf1b901f7173785020715cc8b2329c2bd104a5adda6c5dccddc7a749be0`  
		Last Modified: Wed, 16 Nov 2016 23:25:43 GMT  
		Size: 1.9 KB (1853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c329aaa7ed8ee457706bd9d40b94720529ef5d1da2db364488c6ed61f70a7884`  
		Last Modified: Wed, 16 Nov 2016 23:26:04 GMT  
		Size: 87.2 MB (87242499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be6b15280e47427466890776002439a9b6dafe8e8051e646c4fe74857c98159`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4fedbd3e9daabb68fe20fa72633f4d9db4d6ad043d8096fbbf155802e030bf`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e974867b073c2daac6fd359ddb97828284a2dabfa78defea3a0a162a89560`  
		Last Modified: Wed, 16 Nov 2016 23:25:40 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8c45bcfa887fe68eb8f80248e771c0b86a2bc13e0557423cc402c8e958a7f`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 99.1 KB (99105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e941cc53dab7c90d4e668d0ff755e7b2a071aeed88cb2cb9338e1cde97313df2`  
		Last Modified: Wed, 16 Nov 2016 23:25:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
