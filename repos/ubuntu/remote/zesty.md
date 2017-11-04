## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:0537ec6ef3bdcc490db2aec99ed84c28b9e5cafd4f810f46a6314dee930d1051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:zesty` - linux; amd64

```console
$ docker pull ubuntu@sha256:1471481e0d3cd82c2054ad1b8200dd6e972781638d827b02fca1d02f2da6adb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38440324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9fde03a0de0865b769b9dee0118941ad73110f681b66158129edfdf9a6fdd2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2af954832cc8de7971895f0315985980405797837b5cbc8d6a9dcbdc71661436
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34516354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364222e9711ccc1899c7d697b9cb90164f5915640c4ccd361f34f741ee62ce1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1d2185e32dcc14ce3ef85abfc7d61545f33b4c569bebc05d404e334166730005
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549331a667ba1f9323cae258a7f063097b7a957da335a5385fbb29103012851c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; 386

```console
$ docker pull ubuntu@sha256:f34712d7c5ffe6546ec89c923c0e161f5e37c4e199d12ccc5f4534611da89c93
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38827601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f061e77c87c5a23d804171bede92168ead7e3bc52b4cc8001b2fe3dfc609877b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:017a120029c660d8eab4500cfb9722ce992bc09720baf3ea6c1714aaff313cc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f65f08621e08f47f8d12a51aebe8446fa8cece7b708a7b6f174cf3fe642de5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; s390x

```console
$ docker pull ubuntu@sha256:330b7d8212de67f03836be1ec11cb45ea1d926ffe0da63d305c47b5a7604aa2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37607507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe17f2b831c0072167ec7112a1fb6c249b7198a64645e1715b39b62235e9bb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:46 GMT
ADD file:d98500a574281bf0f63432a3c0c045843865b8c622dd692e223aefbe9f66af4e in / 
# Mon, 18 Sep 2017 23:33:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8635927930021e2056a2838002d2c677552e0b9b40ecedf74abd298e8eca0f9`  
		Last Modified: Mon, 18 Sep 2017 23:34:51 GMT  
		Size: 37.6 MB (37605103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877d097d6610dc9de2c9223c82beca790a55806f1af7dce3f9f1222e2996f53`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83c0bd9638ca6c165f78b766c0e292c314e3e9564f85320f2a0ad51fbb088`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0332a6f65c9d15a7987c3e473253bc46fd95e794b808611c5e09b4d3ef0454`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b8e2bdba618b1359768422eac2b288464e119b957e296078017f5c3648aa7`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
