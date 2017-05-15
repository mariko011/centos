## `couchbase:enterprise-4.6.1`

```console
$ docker pull couchbase@sha256:2662e209ff22084b3edd2a3240a67fd46d0d701c1bcbf944f63e761d6c5a78d7
```

-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214706774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95d160caf2bd3bb0f513747bcfbfe0d8a86236e12ee09db1bf8dd70157ec846`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 20:04:39 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Mon, 15 May 2017 20:05:08 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 15 May 2017 20:06:57 GMT
ARG CB_VERSION=4.6.1
# Mon, 15 May 2017 20:06:57 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Mon, 15 May 2017 20:06:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb
# Mon, 15 May 2017 20:06:59 GMT
ARG CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf
# Mon, 15 May 2017 20:06:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 15 May 2017 20:07:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 15 May 2017 20:07:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Mon, 15 May 2017 20:07:23 GMT
COPY file:f14849552c5fb3935cb7300d639612403e6af00af7528886bc07e8a778689a7e in /etc/service/couchbase-server/run 
# Mon, 15 May 2017 20:07:24 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Mon, 15 May 2017 20:07:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 15 May 2017 20:07:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=2c11c40424f9ddfe5a3821932215d0ae8d0151aa050b8f4e863fe74b88b988bf CB_VERSION=4.6.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Mon, 15 May 2017 20:07:28 GMT
COPY file:cc6a884f330c854d49f23323bc8c5cc1aa1b48965d4f0c7fe4d46a54871f866f in / 
# Mon, 15 May 2017 20:07:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 May 2017 20:07:29 GMT
CMD ["couchbase-server"]
# Mon, 15 May 2017 20:07:30 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Mon, 15 May 2017 20:07:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfd7d0f759938b785caea8aeef8afd7f6a65d67adfe59fa9a32a77e12bbe86`  
		Last Modified: Mon, 15 May 2017 20:08:01 GMT  
		Size: 11.4 MB (11442720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebe6796af26cbf8484c37faf724ffd3d96d142e69244804711b70cee777a089`  
		Last Modified: Mon, 15 May 2017 20:09:07 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9803ace45ec7cb5286031d1af395e51b9128ad73acabdedac4625578579f41`  
		Last Modified: Mon, 15 May 2017 20:09:25 GMT  
		Size: 136.0 MB (135978414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94c0e323a06f9c120898b8f5a05531381740bc43deca1aae1f29bdf27cc0f62`  
		Last Modified: Mon, 15 May 2017 20:09:05 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73cccdf768949e9d2d17d743875ff5df90c5862e8ec4be6d86664c3475772b2`  
		Last Modified: Mon, 15 May 2017 20:09:05 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187a7e055a46053d8c98a2faa2547ed825b7e21736c37f523d4b6eef14e136e3`  
		Last Modified: Mon, 15 May 2017 20:09:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23cdf6ad2d8868c346646836fdcfe418583062790f80fc8a050821e1fd80047`  
		Last Modified: Mon, 15 May 2017 20:09:05 GMT  
		Size: 105.4 KB (105395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8917b7b0ce9464f9e0b4babfee5bbd20ea7b5337cf46528f4ba30c3fb354e8`  
		Last Modified: Mon, 15 May 2017 20:09:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
