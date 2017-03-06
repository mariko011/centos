<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:12.04.5`](#ubuntu12045)
-	[`ubuntu:12.04`](#ubuntu1204)
-	[`ubuntu:precise-20170214`](#ubuntuprecise-20170214)
-	[`ubuntu:precise`](#ubuntuprecise)
-	[`ubuntu:14.04.5`](#ubuntu14045)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20170214`](#ubuntutrusty-20170214)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20170214`](#ubuntuxenial-20170214)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20170224`](#ubuntuyakkety-20170224)
-	[`ubuntu:yakkety`](#ubuntuyakkety)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:17.04`](#ubuntu1704)
-	[`ubuntu:zesty-20170224`](#ubuntuzesty-20170224)
-	[`ubuntu:zesty`](#ubuntuzesty)
-	[`ubuntu:devel`](#ubuntudevel)

## `ubuntu:12.04.5`

```console
$ docker pull ubuntu@sha256:47effe29d7bed549fee8c63bd60120fa88785e72abfb2aeeccdda21f4eae67e4
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b384dd9703dbc43ce29231b1642e0959c8987cd974ad3afa0a61688d238c9625`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:12.04`

```console
$ docker pull ubuntu@sha256:47effe29d7bed549fee8c63bd60120fa88785e72abfb2aeeccdda21f4eae67e4
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b384dd9703dbc43ce29231b1642e0959c8987cd974ad3afa0a61688d238c9625`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise-20170214`

```console
$ docker pull ubuntu@sha256:47effe29d7bed549fee8c63bd60120fa88785e72abfb2aeeccdda21f4eae67e4
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise-20170214` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b384dd9703dbc43ce29231b1642e0959c8987cd974ad3afa0a61688d238c9625`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise`

```console
$ docker pull ubuntu@sha256:47effe29d7bed549fee8c63bd60120fa88785e72abfb2aeeccdda21f4eae67e4
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b384dd9703dbc43ce29231b1642e0959c8987cd974ad3afa0a61688d238c9625`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:39:32 GMT
ADD file:494afaaca485a97dab6b6946fe21996e0896097b6332ac6b44e333ee2f04d920 in / 
# Mon, 27 Feb 2017 19:39:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:39:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:39:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:40:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:40:01 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d172a1d710ce4a644b04615717de80ab28a657c7a93e4d68338bd163be76e28`  
		Last Modified: Mon, 27 Feb 2017 19:44:35 GMT  
		Size: 39.1 MB (39079158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d35f4bc65eed6e4332fc1845740666b9dec7e4cc190971c13daeca10de6c66b`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 57.9 KB (57928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19231e74a42a271da030b0dfed93d956842083fa073affae7d7272890c4e4577`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51880de525fbdff23d20595f9515e44d03a9fa31056da6da33c19d2a5cacf687`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b3aaaab3eca82841c0cbff1397f2b80e5c64962faddc575c7de2f778b7b698`  
		Last Modified: Mon, 27 Feb 2017 19:44:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04.5`

```console
$ docker pull ubuntu@sha256:62a5dce5ceccd7f1cb2672a571ebee52cad1f08eec9b57fe4965fb0968a9602e
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c09e61e90350e8f5c0cba2979003bdfe32c2d027b68b4f0cf9063cdd7b4bafd`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:62a5dce5ceccd7f1cb2672a571ebee52cad1f08eec9b57fe4965fb0968a9602e
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c09e61e90350e8f5c0cba2979003bdfe32c2d027b68b4f0cf9063cdd7b4bafd`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:trusty-20170214`

```console
$ docker pull ubuntu@sha256:62a5dce5ceccd7f1cb2672a571ebee52cad1f08eec9b57fe4965fb0968a9602e
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20170214` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c09e61e90350e8f5c0cba2979003bdfe32c2d027b68b4f0cf9063cdd7b4bafd`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:62a5dce5ceccd7f1cb2672a571ebee52cad1f08eec9b57fe4965fb0968a9602e
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c09e61e90350e8f5c0cba2979003bdfe32c2d027b68b4f0cf9063cdd7b4bafd`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:dd7808d8792c9841d0b460122f1acf0a2dd1f56404f8d1e56298048885e45535
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50430353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef2e08ed3fabfc44002ccb846c4f2416a2135affc3ce39538834059606f32dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20170214`

```console
$ docker pull ubuntu@sha256:dd7808d8792c9841d0b460122f1acf0a2dd1f56404f8d1e56298048885e45535
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial-20170214` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50430353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef2e08ed3fabfc44002ccb846c4f2416a2135affc3ce39538834059606f32dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:dd7808d8792c9841d0b460122f1acf0a2dd1f56404f8d1e56298048885e45535
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50430353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef2e08ed3fabfc44002ccb846c4f2416a2135affc3ce39538834059606f32dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:dd7808d8792c9841d0b460122f1acf0a2dd1f56404f8d1e56298048885e45535
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50430353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef2e08ed3fabfc44002ccb846c4f2416a2135affc3ce39538834059606f32dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:e2837e43dba2aeb25282045d6e8c43cc21da443b2802ff87be9bdecc619e9b26
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41125531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b23364a71687b779c2277669b64459cc199dcce6da7b004699c7cb64600a34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:42:31 GMT
ADD file:e741da914b6b0133690befb4d6db33aec2f792f002095a35426bf4831265e309 in / 
# Mon, 27 Feb 2017 19:42:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:42:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:42:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:42:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3d3b7c0d7792f1b412cee8427783baaf5e8fb8f1846e6a6c2452150278bf286`  
		Last Modified: Mon, 27 Feb 2017 19:51:10 GMT  
		Size: 41.1 MB (41123164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca51f5907d7b054b0ef55618f22dcf09c7977044da3da307d6500624c69eced0`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903bbd903b1fa548c5dc42e2e895ef6bed80f98d0881b157cd91d59a999587ce`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb21db247f02fd7a2e31c3827462bd15066a64287f3a5e1f6039bb9a139275a`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8271917b11cce060218803c76f41293f3d126ce5dc6ef44f069d1ff34297b9`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20170224`

```console
$ docker pull ubuntu@sha256:e2837e43dba2aeb25282045d6e8c43cc21da443b2802ff87be9bdecc619e9b26
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety-20170224` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41125531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b23364a71687b779c2277669b64459cc199dcce6da7b004699c7cb64600a34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:42:31 GMT
ADD file:e741da914b6b0133690befb4d6db33aec2f792f002095a35426bf4831265e309 in / 
# Mon, 27 Feb 2017 19:42:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:42:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:42:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:42:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3d3b7c0d7792f1b412cee8427783baaf5e8fb8f1846e6a6c2452150278bf286`  
		Last Modified: Mon, 27 Feb 2017 19:51:10 GMT  
		Size: 41.1 MB (41123164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca51f5907d7b054b0ef55618f22dcf09c7977044da3da307d6500624c69eced0`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903bbd903b1fa548c5dc42e2e895ef6bed80f98d0881b157cd91d59a999587ce`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb21db247f02fd7a2e31c3827462bd15066a64287f3a5e1f6039bb9a139275a`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8271917b11cce060218803c76f41293f3d126ce5dc6ef44f069d1ff34297b9`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:e2837e43dba2aeb25282045d6e8c43cc21da443b2802ff87be9bdecc619e9b26
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41125531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b23364a71687b779c2277669b64459cc199dcce6da7b004699c7cb64600a34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:42:31 GMT
ADD file:e741da914b6b0133690befb4d6db33aec2f792f002095a35426bf4831265e309 in / 
# Mon, 27 Feb 2017 19:42:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:42:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:42:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:42:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3d3b7c0d7792f1b412cee8427783baaf5e8fb8f1846e6a6c2452150278bf286`  
		Last Modified: Mon, 27 Feb 2017 19:51:10 GMT  
		Size: 41.1 MB (41123164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca51f5907d7b054b0ef55618f22dcf09c7977044da3da307d6500624c69eced0`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903bbd903b1fa548c5dc42e2e895ef6bed80f98d0881b157cd91d59a999587ce`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb21db247f02fd7a2e31c3827462bd15066a64287f3a5e1f6039bb9a139275a`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8271917b11cce060218803c76f41293f3d126ce5dc6ef44f069d1ff34297b9`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:e2837e43dba2aeb25282045d6e8c43cc21da443b2802ff87be9bdecc619e9b26
```

-	Platforms:
	-	linux; amd64

### `ubuntu:rolling` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41125531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b23364a71687b779c2277669b64459cc199dcce6da7b004699c7cb64600a34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:42:31 GMT
ADD file:e741da914b6b0133690befb4d6db33aec2f792f002095a35426bf4831265e309 in / 
# Mon, 27 Feb 2017 19:42:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:42:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:42:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:42:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d3d3b7c0d7792f1b412cee8427783baaf5e8fb8f1846e6a6c2452150278bf286`  
		Last Modified: Mon, 27 Feb 2017 19:51:10 GMT  
		Size: 41.1 MB (41123164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca51f5907d7b054b0ef55618f22dcf09c7977044da3da307d6500624c69eced0`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903bbd903b1fa548c5dc42e2e895ef6bed80f98d0881b157cd91d59a999587ce`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb21db247f02fd7a2e31c3827462bd15066a64287f3a5e1f6039bb9a139275a`  
		Last Modified: Mon, 27 Feb 2017 19:50:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8271917b11cce060218803c76f41293f3d126ce5dc6ef44f069d1ff34297b9`  
		Last Modified: Mon, 27 Feb 2017 19:50:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.04`

```console
$ docker pull ubuntu@sha256:33b6a09031b6515ef64739e25d1a454e57344a0352ea6c97f2780864334ba1b3
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.04` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40693539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2402b05ac400d452a264d88aaa7439a7401184bd35243ed82d771f1269c49e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:43:20 GMT
ADD file:04beb1a85cc00543677619a5f64d30523b8f61cee7074a2d2f7a9466f02b51ca in / 
# Mon, 27 Feb 2017 19:43:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:43:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:43:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:43:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dc8785c9f730e32bf9173713b3f4f5458b7aafbad3780b47c45d20a08311783b`  
		Last Modified: Mon, 27 Feb 2017 19:52:54 GMT  
		Size: 40.7 MB (40691303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5225b7cdc70e7748e2e8527a20dc85633fe2293f3b26d8e31172752f068737`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f946cd1dcc8394b06989bd54fa83ee6052d6f1ed532472e1d47c1ac2e9e77f6`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69688ab1f2e9dc694d7e4d369b20a307dbb91226085030a1694ac017321cfc0a`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559068fd143f67492000be277e11604af320389b8dc03f4f7feef7112c462936`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty-20170224`

```console
$ docker pull ubuntu@sha256:33b6a09031b6515ef64739e25d1a454e57344a0352ea6c97f2780864334ba1b3
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty-20170224` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40693539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2402b05ac400d452a264d88aaa7439a7401184bd35243ed82d771f1269c49e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:43:20 GMT
ADD file:04beb1a85cc00543677619a5f64d30523b8f61cee7074a2d2f7a9466f02b51ca in / 
# Mon, 27 Feb 2017 19:43:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:43:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:43:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:43:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dc8785c9f730e32bf9173713b3f4f5458b7aafbad3780b47c45d20a08311783b`  
		Last Modified: Mon, 27 Feb 2017 19:52:54 GMT  
		Size: 40.7 MB (40691303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5225b7cdc70e7748e2e8527a20dc85633fe2293f3b26d8e31172752f068737`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f946cd1dcc8394b06989bd54fa83ee6052d6f1ed532472e1d47c1ac2e9e77f6`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69688ab1f2e9dc694d7e4d369b20a307dbb91226085030a1694ac017321cfc0a`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559068fd143f67492000be277e11604af320389b8dc03f4f7feef7112c462936`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:33b6a09031b6515ef64739e25d1a454e57344a0352ea6c97f2780864334ba1b3
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40693539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2402b05ac400d452a264d88aaa7439a7401184bd35243ed82d771f1269c49e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:43:20 GMT
ADD file:04beb1a85cc00543677619a5f64d30523b8f61cee7074a2d2f7a9466f02b51ca in / 
# Mon, 27 Feb 2017 19:43:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:43:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:43:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:43:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dc8785c9f730e32bf9173713b3f4f5458b7aafbad3780b47c45d20a08311783b`  
		Last Modified: Mon, 27 Feb 2017 19:52:54 GMT  
		Size: 40.7 MB (40691303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5225b7cdc70e7748e2e8527a20dc85633fe2293f3b26d8e31172752f068737`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f946cd1dcc8394b06989bd54fa83ee6052d6f1ed532472e1d47c1ac2e9e77f6`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69688ab1f2e9dc694d7e4d369b20a307dbb91226085030a1694ac017321cfc0a`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559068fd143f67492000be277e11604af320389b8dc03f4f7feef7112c462936`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:33b6a09031b6515ef64739e25d1a454e57344a0352ea6c97f2780864334ba1b3
```

-	Platforms:
	-	linux; amd64

### `ubuntu:devel` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40693539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2402b05ac400d452a264d88aaa7439a7401184bd35243ed82d771f1269c49e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:43:20 GMT
ADD file:04beb1a85cc00543677619a5f64d30523b8f61cee7074a2d2f7a9466f02b51ca in / 
# Mon, 27 Feb 2017 19:43:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:43:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:43:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:43:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:43:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dc8785c9f730e32bf9173713b3f4f5458b7aafbad3780b47c45d20a08311783b`  
		Last Modified: Mon, 27 Feb 2017 19:52:54 GMT  
		Size: 40.7 MB (40691303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5225b7cdc70e7748e2e8527a20dc85633fe2293f3b26d8e31172752f068737`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f946cd1dcc8394b06989bd54fa83ee6052d6f1ed532472e1d47c1ac2e9e77f6`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69688ab1f2e9dc694d7e4d369b20a307dbb91226085030a1694ac017321cfc0a`  
		Last Modified: Mon, 27 Feb 2017 19:52:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559068fd143f67492000be277e11604af320389b8dc03f4f7feef7112c462936`  
		Last Modified: Mon, 27 Feb 2017 19:52:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
