## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:f9766d31641ac5eb8e2fe617a6fd0fcebae9dfaf1b88b00b459243722ab3570a
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39f31a8525231293a12218cf5c4f3e4afcd0e36f8dac1cc2f1b68cc71f804ae`
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
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_VERSION=4.5.1
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 16 Nov 2016 23:19:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb
# Wed, 16 Nov 2016 23:19:09 GMT
ARG CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82
# Wed, 16 Nov 2016 23:19:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Nov 2016 23:19:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 16 Nov 2016 23:19:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 16 Nov 2016 23:19:37 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 16 Nov 2016 23:19:38 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 16 Nov 2016 23:19:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 16 Nov 2016 23:19:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4e9075643a46c015acd2dbb5c7d6c047904b21c1934f4c53fbd1dd5d73c74c82 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 16 Nov 2016 23:19:40 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 16 Nov 2016 23:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Nov 2016 23:19:42 GMT
CMD ["couchbase-server"]
# Wed, 16 Nov 2016 23:19:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 16 Nov 2016 23:19:43 GMT
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
	-	`sha256:bb68501ccac064ac94f1817f23a31e18bd26325deadd636d0bd727ab710d4d35`  
		Last Modified: Wed, 16 Nov 2016 23:27:57 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7182e7fc14f8cff718402be034498d50f95f4e593d3e51e1d06629870356c0`  
		Last Modified: Wed, 16 Nov 2016 23:28:30 GMT  
		Size: 131.6 MB (131579162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec664cf520e7b9b6cfe129bc9d69b161ed0428157958f833d82064c0ca0d642`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879f8a1e938f384d61fc8946fedf4a5b50c9806da333dcd070436f73850a969a`  
		Last Modified: Wed, 16 Nov 2016 23:27:54 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0456037b8db8606f359e95c94f28e52808bb568dacdbfa7c5994f1960d960e6`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c775a431beba6eec32ce7afca06c012760c698baabecb6b1c73bf4a2b7988687`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 103.2 KB (103224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df608cbd9ace12f1ddb8772cb091664ca1f42f095878774e15b15364f80d84`  
		Last Modified: Wed, 16 Nov 2016 23:27:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
