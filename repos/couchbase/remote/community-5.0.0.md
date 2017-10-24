## `couchbase:community-5.0.0`

```console
$ docker pull couchbase@sha256:4120b59179be5f7f5733043d9e98f43936ff97003bb0af2d56127cbcfe6d3263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:52786ae51ca2b7993edcae88e4410daee2b4857716f17febaff442c2dec89bb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209817165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7afcdebde608f1b9db985d8de1f2a1589e57d4d96134c1427c6f536b498dc2a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:26 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 13 Sep 2017 23:43:58 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_VERSION=4.5.1
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Wed, 13 Sep 2017 23:44:25 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Wed, 13 Sep 2017 23:44:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 13 Sep 2017 23:44:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 13 Sep 2017 23:44:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 13 Sep 2017 23:44:53 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Wed, 13 Sep 2017 23:44:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Wed, 13 Sep 2017 23:44:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 13 Sep 2017 23:44:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 13 Sep 2017 23:44:55 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Wed, 13 Sep 2017 23:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 23:44:55 GMT
CMD ["couchbase-server"]
# Wed, 13 Sep 2017 23:44:55 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Wed, 13 Sep 2017 23:44:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3806c7dc94759932817c97054335b70de62bf50dd2d03c7941a6b228b99f6ab`  
		Last Modified: Fri, 15 Sep 2017 01:07:37 GMT  
		Size: 11.4 MB (11443400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46382a3b5619f9c32bb5eb2ddbdbc35e79417be85e5ec4e42c88e0b8802af14e`  
		Last Modified: Fri, 15 Sep 2017 01:08:48 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d789367959eb37882a5e251fe344018ebb7c119c9716c65caded2de5cf7da97`  
		Last Modified: Fri, 15 Sep 2017 01:09:20 GMT  
		Size: 131.1 MB (131076431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82f652ea7f04a56dc4c89b4abbe9d414e3e4ce2641af6ff8427618342957428`  
		Last Modified: Fri, 15 Sep 2017 01:08:46 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f6b19d930c87fcbde5151aff9ee68802952040a88f93bcde25945dbc075af9`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b17c0350867941e465ea3408d11cdbb656ac91809a6f68fd0b7c3b02e55b932`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c75f358033dd12acdddc83588802629312848ce08e336245a8f06fd2d177d8`  
		Last Modified: Fri, 15 Sep 2017 01:08:46 GMT  
		Size: 105.4 KB (105401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2701c52258c402024c9a37d6d3bcffe0f18680ce4b3e48914b153434b5b35d7`  
		Last Modified: Fri, 15 Sep 2017 01:08:45 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
