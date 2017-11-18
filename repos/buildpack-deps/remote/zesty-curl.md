## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:40e4bd287ea48a48349e0d36a07dce482ae6eef3a876967cd0c0bfe96fc0913d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e70069087bb515fe374cc0ecf61c2db675fdbb7aebd2aa0cb186ec45e959afb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46124761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaa9e2443a5660256a4ee8cbfe60ea37a7c53f9d75c3cacc9b70a52f81a0fc51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:35 GMT
ADD file:7695c82efcabf2b3ad4c608b200c506d9a16d22ebb6a823742a83fc3b5bc1f31 in / 
# Fri, 17 Nov 2017 21:59:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:38 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:34:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0bbeb3f34b714172c2d2a30a26bec5f9f179d3714ae36e192b66cb2c0d8d0594`  
		Last Modified: Fri, 17 Nov 2017 22:02:10 GMT  
		Size: 38.6 MB (38600735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8d5f4c517a89e3d5ad5da69592d7d67fa9fa6fff5e0d2ffb6d73b2c2436fa5`  
		Last Modified: Fri, 17 Nov 2017 22:02:06 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cd377f217253b5f29a3e014c6b5852cc5d5fbd5ffe30c6a5cf48d999e65aee`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d05a759781ff464a9b2aa8167a99877ce8803341bff8dfc337840227f9ca4`  
		Last Modified: Fri, 17 Nov 2017 22:02:05 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358380db9ed7655eeba0f239421be152c9140ee0aaf5d3aaeb92bcd2e065937`  
		Last Modified: Fri, 17 Nov 2017 22:02:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb23934b976f5c641bcea172640d7059abfcaea9e9fa57f71ae6290e6f1e41d`  
		Last Modified: Fri, 17 Nov 2017 22:53:57 GMT  
		Size: 7.5 MB (7521600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:00ff0c4ffcaa8a2d3196112b720078dc2685f9fdd10bbcea639bdf32f28271a4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41140071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce82f44d5430883bd1c46fda3eec4bc44ec5d317f87fabd72d401da17a46a24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:57 GMT
ADD file:d5a6b4656fb87d464c1a6d24f7d2ad788c424caa7acb90befb5d6d890e7626f4 in / 
# Fri, 17 Nov 2017 22:09:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:10:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:10:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:02 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:44:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c92e729b74cc1bbfb94436ffbafaf145a365136e6f3a832fd63f2a7e03436ce5`  
		Last Modified: Fri, 17 Nov 2017 22:13:43 GMT  
		Size: 34.7 MB (34698512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3457515a3a975aab23ecdef42c6a06e22d76e00c6a84215314b322904a20688c`  
		Last Modified: Fri, 17 Nov 2017 22:13:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502020f08ebd9016d3ad60d93332f08bee5a475c292746aebbde6a29c59480e1`  
		Last Modified: Fri, 17 Nov 2017 22:13:34 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdb1702e9632d3ba30acf96bf09300b15fe020da432267ae9e04c19c1c8a89d`  
		Last Modified: Fri, 17 Nov 2017 22:13:34 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173ace095fef29cbb53bd62df449dc32ef60f9de1a1839cb1b05dad2e6ac84c9`  
		Last Modified: Fri, 17 Nov 2017 22:13:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc0c9212b5b55b5df34314d0c12ac9432c18cf6928ae00fad9b70990eeeee9`  
		Last Modified: Fri, 17 Nov 2017 22:53:55 GMT  
		Size: 6.4 MB (6439053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c4976d6462e6672d8e7c73d32289ac503964dcf22d29aff8b5e0ed63883f047a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42402231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673c0c739a7b9dde9287d2f0d1dd60bf5cbba823e5e270b4b6586493089e930d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:11:29 GMT
ADD file:cfc4499710aa84e937600b43e95cf102dc6dea4d78f2cdc1ef47e226778c92c6 in / 
# Fri, 17 Nov 2017 22:11:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:11:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:11:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:11:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:11:35 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2f2473ee52b2ab480d37620bb621fe6419ee04f5d51b9c4d0f20c18b50ea0114`  
		Last Modified: Fri, 17 Nov 2017 22:17:27 GMT  
		Size: 35.8 MB (35761773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d91d6988e16276c67375313ffefbd45048c953e52b96b4feca97eea1d712a8c`  
		Last Modified: Fri, 17 Nov 2017 22:17:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed0d77d79afd9b3d32583b996c586973309acf93f2df71265a6b7978dc48f99`  
		Last Modified: Fri, 17 Nov 2017 22:17:15 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ebbe7b48ec8945f457b12fc09a73d95f39b80fe2d94b6cdc6bfbc09c792145`  
		Last Modified: Fri, 17 Nov 2017 22:17:15 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e2c07635fbd0e4bf7e773373413c1cd51ab49cb748d3b67fc8c1144dc7d562`  
		Last Modified: Fri, 17 Nov 2017 22:17:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786c289b75aa6b9d631645dcbac6f8d5f17cc63f56fdcd48396d5143d9a8f0cc`  
		Last Modified: Fri, 17 Nov 2017 23:37:40 GMT  
		Size: 6.6 MB (6638050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:82d806e06180c524096fa08c6fa0b840019308fe155c83fa5a2e16a99df4da01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46643395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7753f94a8d8fd634725da8aa4c04f96126ed3f92eef786598c2ece0ba9ef84db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:51:56 GMT
ADD file:7ff04f37bfc82f03029df5bc9786b5d00af7d3f861298d8737f3d6ddf0e2ba7d in / 
# Fri, 17 Nov 2017 22:51:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:51:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:51:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:51:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:51:59 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:41:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:41:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d24c3c14d68dbad1ce2847cf6124fa1030104d002851e2dd253849c2cc73f384`  
		Last Modified: Fri, 17 Nov 2017 22:58:43 GMT  
		Size: 39.0 MB (38989453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b92ec239e577cb3500b0011f864b5aaa601efdab3d1caf3ea2b9a94c6af7c7`  
		Last Modified: Fri, 17 Nov 2017 22:58:35 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7de37d2a6428b2cdc8dfe85a1046f36eb8790154a14749db43cd93ee48cdef`  
		Last Modified: Fri, 17 Nov 2017 22:58:35 GMT  
		Size: 564.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f37d87fefb7adeecd6472ae1e9089eb55c1a8d01f73ba0a429fea08b66a7a8e`  
		Last Modified: Fri, 17 Nov 2017 22:58:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b7df4a0104917ee1440128454cfa5a899473a905e0a50573f96033da0ceb90`  
		Last Modified: Fri, 17 Nov 2017 22:58:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df166baf9e3bf1cf0cf961745b45a58810226f2adf4015637f5331882da9a15`  
		Last Modified: Fri, 17 Nov 2017 23:56:40 GMT  
		Size: 7.7 MB (7651513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:64eea6915c02bec082befcb8ff16468d78957c4ff0a23f3bf329b70a4b9db31b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47978899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1bd9c9866c9eac08045161f4ac6c56abd821121433fdf7a4401e97489eec81`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:10:15 GMT
ADD file:4fc47cf061784da8fb7e0aeae2d910b0039b71f9182a66377d1257a6640c0866 in / 
# Fri, 17 Nov 2017 22:10:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:10:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:10:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:32 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:23:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:24:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:481959d9d0e114a4bbbd4fde28e17cc098c69cf194ce546aa4d9de47a84f9fdd`  
		Last Modified: Fri, 17 Nov 2017 22:13:17 GMT  
		Size: 40.6 MB (40586915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e18cfef1b18b3c21f2926f80dfafa48122fb4e3746066d85230f9c868aaf34`  
		Last Modified: Fri, 17 Nov 2017 22:13:07 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3c4d210925e014831bf633a065fd0956c249b79501ef33875e561d09fc36c3`  
		Last Modified: Fri, 17 Nov 2017 22:13:07 GMT  
		Size: 563.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967d1e4c1a8fe60a32168a39bbff63f66ab050f541d11b75ad30bc37cb90874e`  
		Last Modified: Fri, 17 Nov 2017 22:13:07 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc32e3f4aac83e7f81262bffe730fc5e1752a8db2d25273f59c8076bd60b41a`  
		Last Modified: Fri, 17 Nov 2017 22:13:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823afc083ab38b46583a04799b4c0817ae4e191e1dcc52c236b724e1d4f35cd5`  
		Last Modified: Fri, 17 Nov 2017 23:43:49 GMT  
		Size: 7.4 MB (7389530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1c15c4972b734d7ba0852fa28498590ed320d48539bb65bc2112dad448c99ea6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44955394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a560886f62f80e309b2a162477acab561fc21c2544ce19100d2a2ed6c411507`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:19 GMT
ADD file:bd0530ffe05e5b8895b429294bfa8215d5c68d05a86bb9f6baf49cf9356d7a35 in / 
# Fri, 17 Nov 2017 22:08:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ac8ad71fbdcfb2be3d4e77a4f61bf0f64b7aaa3ff6389efa86c9da3be16d12d6`  
		Last Modified: Fri, 17 Nov 2017 22:10:03 GMT  
		Size: 37.7 MB (37748431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa13fb5549772378f13240dc36709d10c193f96a611317f32cc00dfc546215d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5974a03854806c29abad29d7b50b6244bd4a732b39d55fcbc89738143b2cbac0`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c435cc189750f739a3f77db25246ab02d23f86f3c2803cd98a8daf211de4d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb198739e5e34c35735375fae5b00c549f17b0b6c75aa22950030bb7cf64dce`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645edcec4a656407e332bb4432859e2b02896cb07ec510043c44d089834ac648`  
		Last Modified: Fri, 17 Nov 2017 22:36:17 GMT  
		Size: 7.2 MB (7204561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
