<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:12.04.5`](#ubuntu12045)
-	[`ubuntu:12.04`](#ubuntu1204)
-	[`ubuntu:precise-20161209`](#ubuntuprecise-20161209)
-	[`ubuntu:precise`](#ubuntuprecise)
-	[`ubuntu:14.04.5`](#ubuntu14045)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20161214`](#ubuntutrusty-20161214)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20161213`](#ubuntuxenial-20161213)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20161213`](#ubuntuyakkety-20161213)
-	[`ubuntu:yakkety`](#ubuntuyakkety)
-	[`ubuntu:17.04`](#ubuntu1704)
-	[`ubuntu:zesty-20161212`](#ubuntuzesty-20161212)
-	[`ubuntu:zesty`](#ubuntuzesty)
-	[`ubuntu:devel`](#ubuntudevel)

## `ubuntu:12.04.5`

```console
$ docker pull ubuntu@sha256:abdc090336ba4503bd72d0961a4f3d45134900d9a793d3f0c06a64d2555fbab7
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d07a756afde882429cfc57c83371f145ff96a5933d5b85b2a525e321e2ac61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:12.04`

```console
$ docker pull ubuntu@sha256:abdc090336ba4503bd72d0961a4f3d45134900d9a793d3f0c06a64d2555fbab7
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d07a756afde882429cfc57c83371f145ff96a5933d5b85b2a525e321e2ac61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise-20161209`

```console
$ docker pull ubuntu@sha256:abdc090336ba4503bd72d0961a4f3d45134900d9a793d3f0c06a64d2555fbab7
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise-20161209` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d07a756afde882429cfc57c83371f145ff96a5933d5b85b2a525e321e2ac61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise`

```console
$ docker pull ubuntu@sha256:abdc090336ba4503bd72d0961a4f3d45134900d9a793d3f0c06a64d2555fbab7
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39138506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d07a756afde882429cfc57c83371f145ff96a5933d5b85b2a525e321e2ac61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04.5`

```console
$ docker pull ubuntu@sha256:881befbe6f54c1e85029fe3a11554342bf765a0849600ecb8fa2f922798b4925
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f755ca4273009a8b9d08aa156fbb5e601ed69dc698860938f36b2109c19cc39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:881befbe6f54c1e85029fe3a11554342bf765a0849600ecb8fa2f922798b4925
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f755ca4273009a8b9d08aa156fbb5e601ed69dc698860938f36b2109c19cc39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20161214`

```console
$ docker pull ubuntu@sha256:881befbe6f54c1e85029fe3a11554342bf765a0849600ecb8fa2f922798b4925
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20161214` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f755ca4273009a8b9d08aa156fbb5e601ed69dc698860938f36b2109c19cc39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:881befbe6f54c1e85029fe3a11554342bf765a0849600ecb8fa2f922798b4925
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65766957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f755ca4273009a8b9d08aa156fbb5e601ed69dc698860938f36b2109c19cc39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:3b64c309deae7ab0f7dbdd42b6b326261ccd6261da5d88396439353162703fb5
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50098887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3a192ff2a5b7e225e81dc006b6379c10776ed3619757a65608cb72de0a7f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20161213`

```console
$ docker pull ubuntu@sha256:7a64bc9c8843b0a8c8b8a7e4715b7615e4e1b0d8ca3c7e7a76ec8250899c397a
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial-20161213` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50219863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104bec311bcdfc882ea08fdd4f5417ecfb1976adea5a0c237e129c728cb7eada`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:7a64bc9c8843b0a8c8b8a7e4715b7615e4e1b0d8ca3c7e7a76ec8250899c397a
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50219863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104bec311bcdfc882ea08fdd4f5417ecfb1976adea5a0c237e129c728cb7eada`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:7a64bc9c8843b0a8c8b8a7e4715b7615e4e1b0d8ca3c7e7a76ec8250899c397a
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50219863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104bec311bcdfc882ea08fdd4f5417ecfb1976adea5a0c237e129c728cb7eada`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:ba681180e3cf92407a9b0cad95cf6728de479d599cd8030922172c21c595d382
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40770163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5e1ea5f91375ab8ea6150581e1ae65405febcf07f5cce54807e7870b53bba1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20161213`

```console
$ docker pull ubuntu@sha256:ba681180e3cf92407a9b0cad95cf6728de479d599cd8030922172c21c595d382
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety-20161213` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40770163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5e1ea5f91375ab8ea6150581e1ae65405febcf07f5cce54807e7870b53bba1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:ba681180e3cf92407a9b0cad95cf6728de479d599cd8030922172c21c595d382
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40770163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5e1ea5f91375ab8ea6150581e1ae65405febcf07f5cce54807e7870b53bba1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:42 GMT
ADD file:ff4f3a76739749954953d154cef97ec1066cdbe3d69d871e35b26d22921a8766 in / 
# Thu, 15 Dec 2016 17:45:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a694de2ff4f905c590b2499cb72beb52543535412fd0208919241fa3854e51e3`  
		Last Modified: Thu, 15 Dec 2016 17:50:47 GMT  
		Size: 40.8 MB (40767865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83592e4393780d3ec9c48df950b72bfc1601ca304ccb0c8ffb9daa7519ea716`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c987dfa597e6778266cbc4a308f7b0b59bbeafb45afa65b70db8f76007d8d84f`  
		Last Modified: Thu, 15 Dec 2016 17:50:32 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f2d4cb80ea00b5ae57ba227733a315d7900612b6189f9634965527cb1f6d7f`  
		Last Modified: Thu, 15 Dec 2016 17:50:34 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc31a5976cb3a5279e0244cba618193fbaa46d19fa1b52fbce001abc5a963c`  
		Last Modified: Thu, 15 Dec 2016 17:50:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.04`

```console
$ docker pull ubuntu@sha256:cd15f91cdbf7667fbc883965891406fc6cf5d34ddf1ff22a6548d9dcb5e292fb
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c420e2fe13ec1b075ce08c3b1581b828dda278d38feb6b4c939d10253d0e3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:05:10 GMT
ADD file:ba0a65b765b68dc137d4ac427d4a79c1c36581275b7fc20a4183935be0c437e1 in / 
# Tue, 29 Nov 2016 20:05:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:05:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:05:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:05:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:05:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b7b2e3f5d7964d8c5e002ed8f455f40787d3a11d61f38994772860360c1c792`  
		Last Modified: Tue, 29 Nov 2016 20:11:08 GMT  
		Size: 40.6 MB (40573201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016956e825c932a6e0c66956018009a107e686b5b6342b78aed0ff41fda297c0`  
		Last Modified: Tue, 29 Nov 2016 20:10:56 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414a610539c81b84b14ecfb4d2c4f7cf522f59079c367b5aafaadab449e22c3c`  
		Last Modified: Tue, 29 Nov 2016 20:10:57 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ff7313aa238b9c1b00253f16caab7652654609a191520bc22c13273719cae6`  
		Last Modified: Tue, 29 Nov 2016 20:10:57 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280884b8dbc96cd34cfb375dde5f08f04b1d74ad319f71f9404fe402bb4c04c9`  
		Last Modified: Tue, 29 Nov 2016 20:10:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty-20161212`

```console
$ docker pull ubuntu@sha256:5b0694fc10a56856f23eafeec42e712d29c1185a897c54f994975a26a054e8dc
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty-20161212` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40568400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f95d6f229402458c05c42ede48f0aac36609585cd3608b10ef318b01b143cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:46:02 GMT
ADD file:a4279f4ee2861af7518186263feb2a8333c7cf8303c475d96303dd04222e4519 in / 
# Thu, 15 Dec 2016 17:46:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:46:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:46:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:46:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:46:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ce4f579c9e5c1e26e77eaf66ada2de95bdf7f8e24a8f77657d75b8c53deb8f1c`  
		Last Modified: Thu, 15 Dec 2016 17:51:52 GMT  
		Size: 40.6 MB (40566166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a643dd167249d2d5e0f54d4913fa7fd80321638f2d9028f15ba7826ac0c2e`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0be28b4f064551cd2d6bf4b9be812f68ca47319f121d44a273a33e6ba4f9489`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6d28e03d70f31d7c6926715daa4818186990a0340f4604bedcab5fd0d8a3f`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c77ca25aeb5e9a9dae365abd1bf6fafddc9e8d59e321d54b9a3341dc35a68`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:5b0694fc10a56856f23eafeec42e712d29c1185a897c54f994975a26a054e8dc
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40568400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f95d6f229402458c05c42ede48f0aac36609585cd3608b10ef318b01b143cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:46:02 GMT
ADD file:a4279f4ee2861af7518186263feb2a8333c7cf8303c475d96303dd04222e4519 in / 
# Thu, 15 Dec 2016 17:46:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:46:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:46:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:46:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:46:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ce4f579c9e5c1e26e77eaf66ada2de95bdf7f8e24a8f77657d75b8c53deb8f1c`  
		Last Modified: Thu, 15 Dec 2016 17:51:52 GMT  
		Size: 40.6 MB (40566166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a643dd167249d2d5e0f54d4913fa7fd80321638f2d9028f15ba7826ac0c2e`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0be28b4f064551cd2d6bf4b9be812f68ca47319f121d44a273a33e6ba4f9489`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6d28e03d70f31d7c6926715daa4818186990a0340f4604bedcab5fd0d8a3f`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c77ca25aeb5e9a9dae365abd1bf6fafddc9e8d59e321d54b9a3341dc35a68`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:5b0694fc10a56856f23eafeec42e712d29c1185a897c54f994975a26a054e8dc
```

-	Platforms:
	-	linux; amd64

### `ubuntu:devel` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40568400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f95d6f229402458c05c42ede48f0aac36609585cd3608b10ef318b01b143cb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:46:02 GMT
ADD file:a4279f4ee2861af7518186263feb2a8333c7cf8303c475d96303dd04222e4519 in / 
# Thu, 15 Dec 2016 17:46:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:46:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:46:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:46:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:46:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ce4f579c9e5c1e26e77eaf66ada2de95bdf7f8e24a8f77657d75b8c53deb8f1c`  
		Last Modified: Thu, 15 Dec 2016 17:51:52 GMT  
		Size: 40.6 MB (40566166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7a643dd167249d2d5e0f54d4913fa7fd80321638f2d9028f15ba7826ac0c2e`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0be28b4f064551cd2d6bf4b9be812f68ca47319f121d44a273a33e6ba4f9489`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c6d28e03d70f31d7c6926715daa4818186990a0340f4604bedcab5fd0d8a3f`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c77ca25aeb5e9a9dae365abd1bf6fafddc9e8d59e321d54b9a3341dc35a68`  
		Last Modified: Thu, 15 Dec 2016 17:51:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
