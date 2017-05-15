<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:17.10`](#ubuntu1710)
-	[`ubuntu:artful-20170511.1`](#ubuntuartful-201705111)
-	[`ubuntu:artful`](#ubuntuartful)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:14.04.5`](#ubuntu14045)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20170330`](#ubuntutrusty-20170330)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20170510`](#ubuntuxenial-20170510)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20170327`](#ubuntuyakkety-20170327)
-	[`ubuntu:yakkety`](#ubuntuyakkety)
-	[`ubuntu:17.04`](#ubuntu1704)
-	[`ubuntu:zesty-20170411`](#ubuntuzesty-20170411)
-	[`ubuntu:zesty`](#ubuntuzesty)
-	[`ubuntu:rolling`](#ubunturolling)

## `ubuntu:17.10`

```console
$ docker pull ubuntu@sha256:0fda3973dca01bb6797c8f84f7728730e3760fff0360b213bb1a8f2a65492967
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37111788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073e7b409b9b1b8691820453bba3315ecb5a47fb52270f85c4e9d1418ad2c3eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:41:51 GMT
ADD file:55b9126900211a70f30d8684ab28d2c5abb9ab42436bc7335c6bd9d2b8f9a0b1 in / 
# Mon, 15 May 2017 16:41:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:41:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:41:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06d6d7dd14f081e36ce2140e75da9d2be41ec3c184473526851222d43317340a`  
		Last Modified: Mon, 15 May 2017 16:45:51 GMT  
		Size: 37.1 MB (37109572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afd309907db7dbf986cfa50ebf787c214836179341cf115a38d60d967d59476`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151009f8900b8d5894eb0ee02bb46edbdc6542f0e992377a9b9ae2fc28ced7a7`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36547d3d8f4e6250dba0bdce6fe7ba5aa302ad03fe7e363dc7286dfe3a35d8be`  
		Last Modified: Mon, 15 May 2017 16:45:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320476e1abe24cdee7fe0da59afd08414429e49896040ebd7dd0987db6a030ac`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful-20170511.1`

```console
$ docker pull ubuntu@sha256:0fda3973dca01bb6797c8f84f7728730e3760fff0360b213bb1a8f2a65492967
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful-20170511.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37111788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073e7b409b9b1b8691820453bba3315ecb5a47fb52270f85c4e9d1418ad2c3eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:41:51 GMT
ADD file:55b9126900211a70f30d8684ab28d2c5abb9ab42436bc7335c6bd9d2b8f9a0b1 in / 
# Mon, 15 May 2017 16:41:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:41:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:41:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06d6d7dd14f081e36ce2140e75da9d2be41ec3c184473526851222d43317340a`  
		Last Modified: Mon, 15 May 2017 16:45:51 GMT  
		Size: 37.1 MB (37109572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afd309907db7dbf986cfa50ebf787c214836179341cf115a38d60d967d59476`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151009f8900b8d5894eb0ee02bb46edbdc6542f0e992377a9b9ae2fc28ced7a7`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36547d3d8f4e6250dba0bdce6fe7ba5aa302ad03fe7e363dc7286dfe3a35d8be`  
		Last Modified: Mon, 15 May 2017 16:45:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320476e1abe24cdee7fe0da59afd08414429e49896040ebd7dd0987db6a030ac`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:0fda3973dca01bb6797c8f84f7728730e3760fff0360b213bb1a8f2a65492967
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37111788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073e7b409b9b1b8691820453bba3315ecb5a47fb52270f85c4e9d1418ad2c3eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:41:51 GMT
ADD file:55b9126900211a70f30d8684ab28d2c5abb9ab42436bc7335c6bd9d2b8f9a0b1 in / 
# Mon, 15 May 2017 16:41:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:41:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:41:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06d6d7dd14f081e36ce2140e75da9d2be41ec3c184473526851222d43317340a`  
		Last Modified: Mon, 15 May 2017 16:45:51 GMT  
		Size: 37.1 MB (37109572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afd309907db7dbf986cfa50ebf787c214836179341cf115a38d60d967d59476`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151009f8900b8d5894eb0ee02bb46edbdc6542f0e992377a9b9ae2fc28ced7a7`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36547d3d8f4e6250dba0bdce6fe7ba5aa302ad03fe7e363dc7286dfe3a35d8be`  
		Last Modified: Mon, 15 May 2017 16:45:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320476e1abe24cdee7fe0da59afd08414429e49896040ebd7dd0987db6a030ac`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:0fda3973dca01bb6797c8f84f7728730e3760fff0360b213bb1a8f2a65492967
```

-	Platforms:
	-	linux; amd64

### `ubuntu:devel` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37111788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073e7b409b9b1b8691820453bba3315ecb5a47fb52270f85c4e9d1418ad2c3eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:41:51 GMT
ADD file:55b9126900211a70f30d8684ab28d2c5abb9ab42436bc7335c6bd9d2b8f9a0b1 in / 
# Mon, 15 May 2017 16:41:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:41:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:41:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06d6d7dd14f081e36ce2140e75da9d2be41ec3c184473526851222d43317340a`  
		Last Modified: Mon, 15 May 2017 16:45:51 GMT  
		Size: 37.1 MB (37109572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afd309907db7dbf986cfa50ebf787c214836179341cf115a38d60d967d59476`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151009f8900b8d5894eb0ee02bb46edbdc6542f0e992377a9b9ae2fc28ced7a7`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36547d3d8f4e6250dba0bdce6fe7ba5aa302ad03fe7e363dc7286dfe3a35d8be`  
		Last Modified: Mon, 15 May 2017 16:45:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320476e1abe24cdee7fe0da59afd08414429e49896040ebd7dd0987db6a030ac`  
		Last Modified: Mon, 15 May 2017 16:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04.5`

```console
$ docker pull ubuntu@sha256:b2a55128abd84a99436157c2fc759cf0a525c273722460e6f8f9630747dfe7e8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67177301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff3b426bbaafba63cae165e8f6a4955a24a53cdf6d25cce00353e97cda3df71`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:b2a55128abd84a99436157c2fc759cf0a525c273722460e6f8f9630747dfe7e8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67177301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff3b426bbaafba63cae165e8f6a4955a24a53cdf6d25cce00353e97cda3df71`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:trusty-20170330`

```console
$ docker pull ubuntu@sha256:b2a55128abd84a99436157c2fc759cf0a525c273722460e6f8f9630747dfe7e8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20170330` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67177301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff3b426bbaafba63cae165e8f6a4955a24a53cdf6d25cce00353e97cda3df71`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:b2a55128abd84a99436157c2fc759cf0a525c273722460e6f8f9630747dfe7e8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67177301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff3b426bbaafba63cae165e8f6a4955a24a53cdf6d25cce00353e97cda3df71`
-	Default Command: `["\/bin\/bash"]`

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

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:382452f82a8bbd34443b2c727650af46aced0f94a44463c62a9848133ecb1aa8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46895688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcd9d4fca80e9e8afc525d8a38e7c56825dfb4a220ed77156f9fb13b14d4ab7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20170510`

```console
$ docker pull ubuntu@sha256:382452f82a8bbd34443b2c727650af46aced0f94a44463c62a9848133ecb1aa8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial-20170510` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46895688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcd9d4fca80e9e8afc525d8a38e7c56825dfb4a220ed77156f9fb13b14d4ab7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:382452f82a8bbd34443b2c727650af46aced0f94a44463c62a9848133ecb1aa8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46895688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcd9d4fca80e9e8afc525d8a38e7c56825dfb4a220ed77156f9fb13b14d4ab7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:382452f82a8bbd34443b2c727650af46aced0f94a44463c62a9848133ecb1aa8
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46895688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcd9d4fca80e9e8afc525d8a38e7c56825dfb4a220ed77156f9fb13b14d4ab7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:2c935ced8a4ebecab443216ee4dd9e11dc1c85f81a04f07277f99567238f00d9
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42597184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4c9ae219d01e7338adf9b955679f75dc1b3b399fd2acf0022f9a88ae84c73d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20170327`

```console
$ docker pull ubuntu@sha256:2c935ced8a4ebecab443216ee4dd9e11dc1c85f81a04f07277f99567238f00d9
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety-20170327` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42597184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4c9ae219d01e7338adf9b955679f75dc1b3b399fd2acf0022f9a88ae84c73d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:2c935ced8a4ebecab443216ee4dd9e11dc1c85f81a04f07277f99567238f00d9
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42597184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4c9ae219d01e7338adf9b955679f75dc1b3b399fd2acf0022f9a88ae84c73d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.04`

```console
$ docker pull ubuntu@sha256:e261b66433569bdec1ded5a1aba12dc8701ce75ece9551f545a39bd9612bba96
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37594894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3855d928c7071d5fcfb80cb6d937484aa2d17be2521cd6f7972f8a1d3ccd3c0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:45:15 GMT
ADD file:474024cdd432e6310b1600ec7a7ad514441b78931e54c88649d80210dc1b8dff in / 
# Mon, 15 May 2017 16:45:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:45:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:45:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0a7126bd8a6b99542baff88a3b3d6060f757015b9d0b9eefc67262a3105e8f5b`  
		Last Modified: Mon, 15 May 2017 16:52:05 GMT  
		Size: 37.6 MB (37592623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94a3e53d4ca5a11895528c17edf53bd66ba70a09e54ffe9a6e4b1d20aff1b7`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac23aaae9d8dfc439fa83d11efd459fbc2f13fede461588d7aef3a99c674415`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f895d18390bae5533dc556f8c3f5a4a9d48ad8d8069568b508caed897d55825`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37729941d4733d0d479a3fd2eb177e754711c7b4ac0f2a7a267a708f29e19a14`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty-20170411`

```console
$ docker pull ubuntu@sha256:e261b66433569bdec1ded5a1aba12dc8701ce75ece9551f545a39bd9612bba96
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty-20170411` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37594894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3855d928c7071d5fcfb80cb6d937484aa2d17be2521cd6f7972f8a1d3ccd3c0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:45:15 GMT
ADD file:474024cdd432e6310b1600ec7a7ad514441b78931e54c88649d80210dc1b8dff in / 
# Mon, 15 May 2017 16:45:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:45:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:45:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0a7126bd8a6b99542baff88a3b3d6060f757015b9d0b9eefc67262a3105e8f5b`  
		Last Modified: Mon, 15 May 2017 16:52:05 GMT  
		Size: 37.6 MB (37592623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94a3e53d4ca5a11895528c17edf53bd66ba70a09e54ffe9a6e4b1d20aff1b7`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac23aaae9d8dfc439fa83d11efd459fbc2f13fede461588d7aef3a99c674415`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f895d18390bae5533dc556f8c3f5a4a9d48ad8d8069568b508caed897d55825`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37729941d4733d0d479a3fd2eb177e754711c7b4ac0f2a7a267a708f29e19a14`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:e261b66433569bdec1ded5a1aba12dc8701ce75ece9551f545a39bd9612bba96
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37594894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3855d928c7071d5fcfb80cb6d937484aa2d17be2521cd6f7972f8a1d3ccd3c0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:45:15 GMT
ADD file:474024cdd432e6310b1600ec7a7ad514441b78931e54c88649d80210dc1b8dff in / 
# Mon, 15 May 2017 16:45:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:45:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:45:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0a7126bd8a6b99542baff88a3b3d6060f757015b9d0b9eefc67262a3105e8f5b`  
		Last Modified: Mon, 15 May 2017 16:52:05 GMT  
		Size: 37.6 MB (37592623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94a3e53d4ca5a11895528c17edf53bd66ba70a09e54ffe9a6e4b1d20aff1b7`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac23aaae9d8dfc439fa83d11efd459fbc2f13fede461588d7aef3a99c674415`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f895d18390bae5533dc556f8c3f5a4a9d48ad8d8069568b508caed897d55825`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37729941d4733d0d479a3fd2eb177e754711c7b4ac0f2a7a267a708f29e19a14`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:e261b66433569bdec1ded5a1aba12dc8701ce75ece9551f545a39bd9612bba96
```

-	Platforms:
	-	linux; amd64

### `ubuntu:rolling` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37594894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3855d928c7071d5fcfb80cb6d937484aa2d17be2521cd6f7972f8a1d3ccd3c0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:45:15 GMT
ADD file:474024cdd432e6310b1600ec7a7ad514441b78931e54c88649d80210dc1b8dff in / 
# Mon, 15 May 2017 16:45:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:45:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:45:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0a7126bd8a6b99542baff88a3b3d6060f757015b9d0b9eefc67262a3105e8f5b`  
		Last Modified: Mon, 15 May 2017 16:52:05 GMT  
		Size: 37.6 MB (37592623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94a3e53d4ca5a11895528c17edf53bd66ba70a09e54ffe9a6e4b1d20aff1b7`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac23aaae9d8dfc439fa83d11efd459fbc2f13fede461588d7aef3a99c674415`  
		Last Modified: Mon, 15 May 2017 16:51:58 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f895d18390bae5533dc556f8c3f5a4a9d48ad8d8069568b508caed897d55825`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37729941d4733d0d479a3fd2eb177e754711c7b4ac0f2a7a267a708f29e19a14`  
		Last Modified: Mon, 15 May 2017 16:51:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
